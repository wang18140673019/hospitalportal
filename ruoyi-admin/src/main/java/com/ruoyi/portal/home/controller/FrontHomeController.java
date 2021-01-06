package com.ruoyi.portal.home.controller;




import com.ruoyi.common.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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


    @GetMapping("List/News/14")
    public String ListNews14()
    {
        return prefix + "/List/News/14";
    }


    @GetMapping("news/news")
    public String news()
    {
        return prefix + "/news/news";
    }

    @GetMapping("party/party")
    public String dangindex()
    {
        return prefix + "/party/party";
    }

    @GetMapping("party/p")
    public String dangp()
    {
        return prefix + "/party/p";
    }
    @GetMapping("party/pic")
    public String dangpic()
    {
        return prefix + "/party/pic";
    }

// 支部工作
    @GetMapping("party/zhubugongzuo")
    public String zhubugongzuo()
    {
        return prefix + "/party/zhubugongzuo";
    }


    // 公告纪要
    @GetMapping("party/gonggaojiyao")
    public String gonggaojiyao()
    {
        return prefix + "/party/gonggaojiyao";
    }


    // 党员在线学习
    @GetMapping("party/dangyuanzaixianxuexi")
    public String dangyuanzaixianxuexi()
    {
        return prefix + "/party/dangyuanzaixianxuexi";
    }

    // 党建实务
    @GetMapping("party/dangjianshiwu")
    public String dangjianshiwu()
    {
        return prefix + "/party/dangjianshiwu";
    }
    // 院志工作动态
    @GetMapping("party/yuanzhi")
    public String yuanzhi()
    {
        return prefix + "/party/yuanzhi";
    }

    @GetMapping("party/{id}")
    public String partydetail(@PathVariable String id)
    {
        return prefix + "/party/zhubugongzuodetail";
    }




}
