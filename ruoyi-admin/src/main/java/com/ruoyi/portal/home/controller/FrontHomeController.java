package com.ruoyi.portal.home.controller;




import com.ruoyi.common.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/front/")
public class FrontHomeController extends BaseController
{
    private String prefix = "/front";


    @GetMapping("index")
    public String front()
    {
        return prefix + "/index";
    }

    @GetMapping("banner")
    public String banner()
    {
        return prefix + "/banner";
    }

    @GetMapping("gundong")
    public String gundong()
    {
        return prefix + "/gundong";
    }


}
