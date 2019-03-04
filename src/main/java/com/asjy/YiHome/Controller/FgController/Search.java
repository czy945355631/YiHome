package com.asjy.YiHome.Controller.FgController;

import com.alibaba.fastjson.JSON;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Search")
public class Search {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    GoodsServiceImpl goodsService;
    @RequestMapping("/goSearch")
    public String goSearch (String searchByName,String searchByBrand,String searchByClasses,Model model){
        model.addAttribute("classes",classesService.AllClasses());
        List<TblGoods> goodsBySearchName = goodsService.findGoodsBySearchName(searchByName,searchByBrand,searchByClasses);
        model.addAttribute("goodslist",goodsBySearchName);
        Map<String,String> pageinfo = new HashMap<>();
        pageinfo.put("brandid",searchByBrand);
        pageinfo.put("Classesid",searchByClasses);
        model.addAttribute("pageinfo",pageinfo);
        System.out.println(JSON.toJSONString(pageinfo));

        return "YiHome/shop-4-column";
    }
}
