package com.ruoyi.portal.home.controller;




import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/front/")
public class FrontHomeController extends BaseController
{
    private String prefix = "/front";
    @Autowired
    private IOfficeService officeService;

    @Autowired
    private IDoctorService doctorService;

    @Autowired
    private IRegisterrecordService registerrecordService;

    @Autowired
    private IPartyService partyService;

    @Autowired
private INewsService newsService;
    @GetMapping("index")
    public String front(News news, ModelMap mmap)
    {
        startPage();
        List<News> newslist = newsService.selectNewsList(news);
        mmap.put("newslist",newslist);
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









    @GetMapping("party/party")
    public String dangindex(Party party, ModelMap mmap)
    {
        startPage();
        List<Party> partys = partyService.selectPartyList(party);
        mmap.put("partys",partys);
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
    public String zhubugongzuo(Party party, ModelMap mmap)
    {
        startPage();
        party.setTheme("支部工作");
        List<Party> partys = partyService.selectPartyList(party);
        mmap.put("partys",partys);
        return prefix + "/party/zhubugongzuo";
    }


    // 公告纪要
    @GetMapping("party/gonggaojiyao")
    public String gonggaojiyao(Party party, ModelMap mmap)
    {
        startPage();
        party.setTheme("公告纪要");
        List<Party> partys = partyService.selectPartyList(party);
        mmap.put("partys",partys);
        return prefix + "/party/gonggaojiyao";
    }


    // 公告纪要
    @GetMapping("party/gonggaojiyao/{id}")
    public String gonggaojiyao(@PathVariable Long id, ModelMap mmap)
    {
        Party party = partyService.selectPartyById(id);
        mmap.put("party",party);
        return prefix + "/party/gonggaojiyaodetail";
    }


    // 党员在线学习
    @GetMapping("party/dangyuanzaixianxuexi")
    public String dangyuanzaixianxuexi(Party party, ModelMap mmap)
    {
        startPage();
        party.setTheme("党员在线学习");
        List<Party> partys = partyService.selectPartyList(party);
        mmap.put("partys",partys);
        return prefix + "/party/dangyuanzaixianxuexi";
    }


    // 党员在线学习
    @GetMapping("party/dangyuanzaixianxuexi/{id}")
    public String dangyuanzaixianxuexidetail(@PathVariable Long id, ModelMap mmap)
    {
        Party party = partyService.selectPartyById(id);
        mmap.put("party",party);
        return prefix + "/party/dangyuanzaixianxuexidetail";
    }

    // 党建实务
    @GetMapping("party/dangjianshiwu")
    public String dangjianshiwu(Party party, ModelMap mmap)
    {
        startPage();
        party.setTheme("党建实务");
        List<Party> partys = partyService.selectPartyList(party);
        mmap.put("partys",partys);
        return prefix + "/party/dangjianshiwu";
    }

    // 党建实务
    @GetMapping("party/dangjianshiwu/{id}")
    public String dangjianshiwu(@PathVariable Long id, ModelMap mmap)
    {
        Party party = partyService.selectPartyById(id);
        mmap.put("party",party);
        return prefix + "/party/dangjianshiwudetail";
    }
    // 院志工作动态
    @GetMapping("party/yuanzhi/{id}")
    public String yuanzhidetail(@PathVariable Long id, ModelMap mmap)
    {
        Party party = partyService.selectPartyById(id);
        mmap.put("party",party);
        return prefix + "/party/yuanzhidetail";
    }
    // 院志工作动态
    @GetMapping("party/yuanzhi")
    public String yuanzhi(Party party, ModelMap mmap)
    {
        startPage();
        party.setTheme("院志工作动态");
        List<Party> partys = partyService.selectPartyList(party);
        mmap.put("partys",partys);
        return prefix + "/party/yuanzhi";
    }

    @GetMapping("party/zhubugongzuodetail/{id}")
    public String partydetail(@PathVariable Long id,ModelMap mmap)
    {
        Party party = partyService.selectPartyById(id);
        mmap.put("party",party);
        return prefix + "/party/zhubugongzuodetail";
    }

    // 医院新闻详情
    @GetMapping("news/{id}")
    public String newsdetail(@PathVariable("id") Long id, ModelMap mmap)

    {
        startPage();
        News news = newsService.selectNewsById(id);
        mmap.put("news",news);
        return prefix + "/news/newsdetail";
    }

// 医院新闻
    @GetMapping("news/news")
    public String news(News news,ModelMap mmap)
    {
        startPage();
        List<News> list = newsService.selectNewsList(news);
        mmap.put("news",list);
        return prefix + "/news/news";
    }


    // 挂号
    @GetMapping("guahao/index/{doctorname}")
    public String guohaoindex(@PathVariable String doctorname,ModelMap mmap)
    {
        mmap.put("doctorname",doctorname);
        return prefix + "/guahao/index";
    }


  // 科室列表
    @GetMapping("office/list")
    public String officelist()
    {
        return prefix + "/office/list";
    }


    // 科室详情
    @GetMapping("office/officedetail/{id}")
    public String officedetail(@PathVariable Long id,ModelMap mmap)
    {
        Office office=  officeService.selectOfficeById(id);
        mmap.put("office", office);
        Doctor doctor = new Doctor();
        doctor.setOfficecode(office.getOfficecode());
        List<Doctor> doctors =doctorService.selectDoctorList(doctor);
        mmap.put("doctors", doctors);
        return prefix + "/office/officedetail";
    }


    /**
     * 新增保存挂号
     */
    @GetMapping("registerrecord/pcadd")
    public String pcadd(Registerrecord registerrecord)
    {
        registerrecord.setCreateTime(new Date());
        registerrecordService.insertRegisterrecord(registerrecord);
        return "/front/guahao/" + "success";
    }


}
