package com.ruoyi.system.controller;

import java.util.Date;
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
import com.ruoyi.system.domain.Registerrecord;
import com.ruoyi.system.service.IRegisterrecordService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 挂号Controller
 * 
 * @author ruoyi
 * @date 2021-01-19
 */
@Controller
@RequestMapping("/system/registerrecord")
public class RegisterrecordController extends BaseController
{
    private String prefix = "system/registerrecord";

    @Autowired
    private IRegisterrecordService registerrecordService;

    @RequiresPermissions("system:registerrecord:view")
    @GetMapping()
    public String registerrecord()
    {
        return prefix + "/registerrecord";
    }

    /**
     * 查询挂号列表
     */
    @RequiresPermissions("system:registerrecord:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Registerrecord registerrecord)
    {
        startPage();
        List<Registerrecord> list = registerrecordService.selectRegisterrecordList(registerrecord);
        return getDataTable(list);
    }

    /**
     * 导出挂号列表
     */
    @RequiresPermissions("system:registerrecord:export")
    @Log(title = "挂号", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Registerrecord registerrecord)
    {
        List<Registerrecord> list = registerrecordService.selectRegisterrecordList(registerrecord);
        ExcelUtil<Registerrecord> util = new ExcelUtil<Registerrecord>(Registerrecord.class);
        return util.exportExcel(list, "registerrecord");
    }

    /**
     * 新增挂号
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }



    /**
     * 新增保存挂号
     */
    @RequiresPermissions("system:registerrecord:add")
    @Log(title = "挂号", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Registerrecord registerrecord)
    {
        return toAjax(registerrecordService.insertRegisterrecord(registerrecord));
    }

    /**
     * 修改挂号
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Registerrecord registerrecord = registerrecordService.selectRegisterrecordById(id);
        mmap.put("registerrecord", registerrecord);
        return prefix + "/edit";
    }

    /**
     * 修改保存挂号
     */
    @RequiresPermissions("system:registerrecord:edit")
    @Log(title = "挂号", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Registerrecord registerrecord)
    {
        return toAjax(registerrecordService.updateRegisterrecord(registerrecord));
    }

    /**
     * 删除挂号
     */
    @RequiresPermissions("system:registerrecord:remove")
    @Log(title = "挂号", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(registerrecordService.deleteRegisterrecordByIds(ids));
    }
}
