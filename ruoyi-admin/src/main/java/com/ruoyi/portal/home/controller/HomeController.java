package com.ruoyi.portal.home.controller;




import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.system.domain.Doctor;
import com.ruoyi.system.domain.News;
import com.ruoyi.system.domain.Office;
import com.ruoyi.system.service.IDoctorService;
import com.ruoyi.system.service.INewsService;
import com.ruoyi.system.service.IOfficeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller

public class HomeController extends BaseController
{
    private String prefix = "/front";

    @Autowired
    private INewsService newsService;
    @GetMapping("/")
    public String front(News news, ModelMap mmap)
    {
        startPage();
        List<News> newslist = newsService.selectNewsList(news);
        mmap.put("newslist",newslist);
        return prefix + "/index";
    }



}
