package com.asjy.YiHome.Controller.FgController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.asjy.YiHome.model.GoodsCar;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.service.impl.BrandsServiceImpl;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

@Controller
public class Products {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    BrandsServiceImpl brandsService;
    @Autowired
    GoodsServiceImpl goodsService;
    @RequestMapping("/Products")
    public String gotest(Model model, int id, HttpServletRequest request){
        model.addAttribute("classes",classesService.AllClasses());
        model.addAttribute("brands",brandsService.getBrandsAll());
        model.addAttribute("goodsSpec",goodsService.fingGoodsSpecByGoodsId(id));
//        Cookie[] cookies =  request.getCookies();
        //
        //判断是否登录
        //
//        if(cookies != null) {
//            for(Cookie cookie : cookies) {
//                if (cookie.getName().equals("goodscar")) {
//                    Map<String,Object> Car = new HashMap<>();
//                    String value = cookie.getValue();
//                    try {
//                        value = URLDecoder.decode(value, "utf-8");
//                    } catch (UnsupportedEncodingException e) {
//                        e.printStackTrace();
//                    }
//                    BigDecimal sumprice = new BigDecimal(0);
//                    List<GoodsCar> goodsList = JSON.parseObject(value, new TypeReference<List<GoodsCar>>() {});
//                    for (GoodsCar goodsCar : goodsList) {
//                        TblGoods goodsById = goodsService.findGoodsById(goodsCar.getGoodsid());
//                        goodsCar.setGoods(goodsById);
//                        sumprice.add(goodsById.getNowPrice());
//                    }
//                    int items = goodsList.size();
//                    Car.put("items",items);
//                    Car.put("sumprice",sumprice);
//                    Car.put("goodsList",goodsList);
//                    model.addAttribute("goodscar",goodsList);
//                }
//            }
//        }
        TblGoods goodsById = goodsService.findGoodsById(id);
        model.addAttribute("goods",goodsById);
        model.addAttribute("goodsOrderByCommend",goodsService.findGoodsByBrandid(goodsById.getBrandId().toString(),goodsById.getId().toString()));
        model.addAttribute("ArtSpec",goodsService.fingGoodsSpecByArtno(goodsById.getArtno()));
        return "YiHome/single-product";
    }


}
