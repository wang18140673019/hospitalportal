package com.ruoyi.portal.home.controller;




import com.ruoyi.common.core.controller.BaseController;
import com.sun.org.apache.xml.internal.resolver.Catalog;
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


    @GetMapping("hospital/index")
    public String hospitalindex()
    {
        return prefix + "/hospital/index";
    }

    @GetMapping("hospital/Agency")
    public String hospitalAgency()
    {
        return prefix + "/hospital/Agency";
    }


    @GetMapping("hospital/culture")
    public String hospitalculture()
    {
        return prefix + "/hospital/culture";
    }


    @GetMapping("hospital/Traffic")
    public String hospitalTraffic()
    {
        return prefix + "/hospital/Traffic";
    }


    @GetMapping("List/Catalog/17")
    public String ListCatalog17()
    {
        return prefix + "/List/Catalog/17";
    }


}
