package com.ruoyi.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.Party;
import com.ruoyi.system.service.IPartyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 党建Controller
 * 
 * @author ruoyi
 * @date 2021-01-20
 */
@Controller
@RequestMapping("/system/party")
public class PartyController extends BaseController
{
    private String prefix = "system/party";

    @Autowired
    private IPartyService partyService;

    @RequiresPermissions("system:party:view")
    @GetMapping()
    public String party()
    {
        return prefix + "/party";
    }

    /**
     * 查询党建列表
     */
    @RequiresPermissions("system:party:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Party party)
    {
        startPage();
        List<Party> list = partyService.selectPartyList(party);
        return getDataTable(list);
    }

    /**
     * 导出党建列表
     */
    @RequiresPermissions("system:party:export")
    @Log(title = "党建", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Party party)
    {
        List<Party> list = partyService.selectPartyList(party);
        ExcelUtil<Party> util = new ExcelUtil<Party>(Party.class);
        return util.exportExcel(list, "party");
    }

    /**
     * 新增党建
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存党建
     */
    @RequiresPermissions("system:party:add")
    @Log(title = "党建", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Party party)
    {
        return toAjax(partyService.insertParty(party));
    }

    /**
     * 修改党建
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Party party = partyService.selectPartyById(id);
        mmap.put("party", party);
        return prefix + "/edit";
    }

    /**
     * 修改保存党建
     */
    @RequiresPermissions("system:party:edit")
    @Log(title = "党建", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Party party)
    {
        return toAjax(partyService.updateParty(party));
    }

    /**
     * 删除党建
     */
    @RequiresPermissions("system:party:remove")
    @Log(title = "党建", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(partyService.deletePartyByIds(ids));
    }
}
