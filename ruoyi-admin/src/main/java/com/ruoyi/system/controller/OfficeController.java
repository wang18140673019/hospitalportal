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
import com.ruoyi.system.domain.Office;
import com.ruoyi.system.service.IOfficeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 科室Controller
 * 
 * @author ruoyi
 * @date 2021-01-18
 */
@Controller
@RequestMapping("/system/office")
public class OfficeController extends BaseController
{
    private String prefix = "system/office";

    @Autowired
    private IOfficeService officeService;

    @RequiresPermissions("system:office:view")
    @GetMapping()
    public String office()
    {
        return prefix + "/office";
    }

    /**
     * 查询科室列表
     */
    @RequiresPermissions("system:office:list")
    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo list(Office office)
    {
        startPage();
        List<Office> list = officeService.selectOfficeList(office);
        return getDataTable(list);
    }

    /**
     * 导出科室列表
     */
    @RequiresPermissions("system:office:export")
    @Log(title = "科室", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Office office)
    {
        List<Office> list = officeService.selectOfficeList(office);
        ExcelUtil<Office> util = new ExcelUtil<Office>(Office.class);
        return util.exportExcel(list, "office");
    }

    /**
     * 新增科室
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存科室
     */
    @RequiresPermissions("system:office:add")
    @Log(title = "科室", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Office office)
    {
        return toAjax(officeService.insertOffice(office));
    }

    /**
     * 修改科室
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Office office = officeService.selectOfficeById(id);
        mmap.put("office", office);
        return prefix + "/edit";
    }

    /**
     * 修改保存科室
     */
    @RequiresPermissions("system:office:edit")
    @Log(title = "科室", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Office office)
    {
        return toAjax(officeService.updateOffice(office));
    }

    /**
     * 删除科室
     */
    @RequiresPermissions("system:office:remove")
    @Log(title = "科室", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(officeService.deleteOfficeByIds(ids));
    }
}
