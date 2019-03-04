package com.asjy.YiHome.Controller.FgController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.asjy.YiHome.model.*;
import com.asjy.YiHome.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

@RequestMapping("/FgPage")
@Controller
public class GoIndex {
    @Autowired
    UserServiceImpl usi1;
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    BrandsServiceImpl brandsService;
    @Autowired
    FloorServiceImpl floorService;
    @Autowired
    GoodsServiceImpl goodsService;
    @Autowired
    SpecServiceImpl specService;




    @ResponseBody
    @RequestMapping(value = "/SpecAjax" , method = RequestMethod.POST)
    public List<Map<String,String>> SpecAjax(@RequestBody List<Object> list){
        List<Map<String,String>> newlist = new ArrayList<>();
        for (Object i : list) {
            //接取规格值并查询对应规格一中的商品
            Map<String,String> a = (Map<String,String>) i ;
            Integer artno = Integer.parseInt(a.get("artno"));
            Integer specid = Integer.parseInt(a.get("specid"));
            Integer specvid = Integer.parseInt(a.get("specvid"));
            GoodsSpec spec = new GoodsSpec();
            spec.setSpecid(specid);
            spec.setSpecvid(specvid);
            spec.setArtno(artno);
            List<GoodsSpec> goodslist1 = specService.findGoodsSpecBySpecidSpecvidArtno(spec);
            //接取规格值并查询对应规格二中的商品
            Integer otherspecid = Integer.parseInt(a.get("otherspecid"));
            Integer otherspecvid = Integer.parseInt(a.get("otherspecvid"));
            GoodsSpec otherspec = new GoodsSpec();
            otherspec.setSpecid(otherspecid);
            otherspec.setSpecvid(otherspecvid);
            otherspec.setArtno(artno);
            List<GoodsSpec> goodslist2 = specService.findGoodsSpecBySpecidSpecvidArtno(otherspec);
            boolean flag = false;
            for (GoodsSpec goodsSpec : goodslist1) {
                for (GoodsSpec goodsSpec1 : goodslist2) {
                    if (goodsSpec.getGoodsid() == goodsSpec1.getGoodsid()){
                        a.put("goodsid",goodsSpec.getGoodsid().toString());
                        flag = true;
                        a.put("status","finded");
                    }
                }
            }
            if (!flag){
                a.put("status","undefind");
            }
            newlist.add(a);
        }
        String s = JSON.toJSONString(newlist);
        return newlist;
    }

    @RequestMapping("/goIndex")
    public String goIndex(Model model){
        model.addAttribute("classes",classesService.AllClasses());
        model.addAttribute("brands",brandsService.getBrandsAll());
        List<AllClasses> allClassesBydisplay = classesService.findAllClassesBydisplay();
        model.addAttribute("classesdisplay",allClassesBydisplay);
        List<TblFloor> floorIndexData = floorService.getFloorIndex();
        model.addAttribute("floor",floorIndexData);
        model.addAttribute("goodsOrderBysales",goodsService.findGoodsOrderBySales());
        model.addAttribute("goodsOrderByCommend",goodsService.findGoodsOrderByShowstatus());
        model.addAttribute("commendbrands",brandsService.getBrandsCommend());

        return "YiHome/index";
    }

    @RequestMapping("/goHeader")
    public String goHerder(){return "YiHome/header";}
    @RequestMapping("/goFooter")
    public String goFooter(){return "YiHome/footer";}

    @RequestMapping(value = "/doLogin",produces = "text/html;charset=UTF-8")
    public String doLogin(AllUser user, HttpServletRequest request,HttpServletResponse response){
//        System.out.println(user.getUserPasswd());
        boolean result = usi1.loginCheck(user,request,response);
        if (result){
            System.out.println("登录成功");
            Long permission = (Long)request.getSession().getAttribute("permission");
            if (permission == 0){
                return "redirect:/FgPage/goIndex";
            }else {
                return "redirect:/BsPage/goIndex";
            }
        }else {
            System.out.println("登录失败");
            return "redirect:/Account/Login";
        }

    }



    @RequestMapping(value="/doRegister",produces = "text/html;charset=UTF-8")
    public String doRegister(AllUser user){
        boolean result = usi1.creatUser(user);
        return "redirect:/Account/Login";
    }

}
