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
import com.ruoyi.system.domain.Recruit;
import com.ruoyi.system.service.IRecruitService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 招聘Controller
 * 
 * @author ruoyi
 * @date 2021-04-21
 */
@Controller
@RequestMapping("/system/recruit")
public class RecruitController extends BaseController
{
    private String prefix = "system/recruit";

    @Autowired
    private IRecruitService recruitService;


    @GetMapping()
    public String recruit()
    {
        return prefix + "/recruit";
    }


    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Recruit recruit)
    {
        startPage();
        List<Recruit> list = recruitService.selectRecruitList(recruit);
        return getDataTable(list);
    }



    /**
     * 修改招聘
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Recruit recruit = recruitService.selectRecruitById(id);
        mmap.put("recruit", recruit);
        return prefix + "/edit";
    }


}
