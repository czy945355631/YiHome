package com.asjy.YiHome.Controller.FgController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.asjy.YiHome.model.GoodsCar;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.GoodsCarServiceImpl;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RequestMapping("/Cart")
@Controller
public class Cart {
    @Autowired
    GoodsServiceImpl goodsService;
    @Autowired
    GoodsCarServiceImpl goodsCarService;
    @Autowired
    ClassesServiceImpl classesService;


    @ResponseBody
    @RequestMapping(value = "/AddGoodsCart",method = RequestMethod.POST)
    public String AddGoodsCart(HttpServletRequest request, int goodsid, Integer quantity, HttpServletResponse response){
        Object loginName = request.getSession().getAttribute("loginName");
        String data = null;
        if (null == loginName || !(loginName instanceof String)) {
            //判断是否登录
            List<GoodsCar> goodscarbycookie = getGoodscarbycookie(request);
            //通过购物车cookie获取已存在的内容
            if (goodscarbycookie!=null){
               //如果不为空，判断所添加商品是否已存在。
                boolean flag = false;
                //假设不存在
                for (GoodsCar car : goodscarbycookie) {
                    if (car.getGoodsid()==goodsid){
                        car.setQuantity(car.getQuantity()+quantity);
                        flag =true;
                        //存在
                    }
                }
                if (flag){
                    //如果存在
                    //将购物车集合转换为jsonstring类型并覆盖到cookie中
                    listToStringAndAddToCookie(response, data, goodscarbycookie);
                }else {
                    GoodsCar goodsCar = CreateGoodsCar(goodsid, quantity,-1);
                    goodscarbycookie.add(goodsCar);
                    listToStringAndAddToCookie(response, data, goodscarbycookie);
                }
            }else {
                GoodsCar goodsCar = CreateGoodsCar(goodsid, quantity,-1);
                goodscarbycookie = new ArrayList<>();
                goodscarbycookie.add(goodsCar);
                listToStringAndAddToCookie(response, data, goodscarbycookie);
            }
        }else {
            //已登录
            Integer userid = (Integer)request.getSession().getAttribute("userid");
            //获取用户id
            List<GoodsCar> goodsCarByUserId = goodsCarService.findGoodsCarByUserId(userid);
            //查找用户的购物车
            //如果购物车中存在此商品id，则修改数据库的信息，如果没有就直接添加。
            boolean checkGoodscar = false;
            for (GoodsCar goodsCar : goodsCarByUserId) {
                if (goodsCar.getGoodsid().equals(goodsid)){
                    GoodsCar goodsCarByGoodsIdandUserid = goodsCarService.findGoodsCarByGoodsId(userid, goodsid);
                    goodsCarByGoodsIdandUserid.setQuantity(goodsCarByGoodsIdandUserid.getQuantity()+quantity);
                    goodsCarService.updateGoodscar(goodsCarByGoodsIdandUserid);
                    checkGoodscar = true;
                }
            }
            if (checkGoodscar == false){
                GoodsCar goodsCar = CreateGoodsCar(goodsid,quantity,userid);
                goodsCarService.insertGOodscar(goodsCar);
            }
//            创建购物车对象
            //读取数据库数据
            //并添加进去
        }
        return "ok";
    }






    @ResponseBody
    @RequestMapping(value = "/decGoodsCart",method = RequestMethod.POST)
    public String decGoodsCart(HttpServletRequest request, int goodsid, int quantity, HttpServletResponse response){
        Object loginName = request.getSession().getAttribute("loginName");
        String data = null;
        if (null == loginName || !(loginName instanceof String)) {
            //判断是否登录
            List<GoodsCar> goodscarbycookie = getGoodscarbycookie(request);
            //通过购物车cookie获取已存在的内容
            if (goodscarbycookie!=null){
                //如果不为空，判断所添加商品是否已存在。
                for (GoodsCar car : goodscarbycookie) {
                    if (car.getGoodsid()==goodsid){
                        car.setQuantity(car.getQuantity()-quantity);
                        if (car.getQuantity() <= 0){
                            goodscarbycookie.remove(car);
                        }else {
                            listToStringAndAddToCookie(response, data, goodscarbycookie);
                        }
                    }
                }
                    //如果存在
                    //将购物车集合转换为jsonstring类型并覆盖到cookie中
            }
        }else {
            //已登录
            Integer userid = (Integer)request.getSession().getAttribute("userid");
            //获取用户id
            List<GoodsCar> goodsCarByUserId = goodsCarService.findGoodsCarByUserId(userid);
            //查找用户的购物车
            //如果购物车中存在此商品id，则修改数据库的信息
            boolean checkGoodscar = false;
            for (GoodsCar goodsCar : goodsCarByUserId) {
                if (goodsCar.getGoodsid().equals(goodsid)){
                    GoodsCar goodsCarByGoodsIdandUserid = goodsCarService.findGoodsCarByGoodsId(userid, goodsid);
                    goodsCarByGoodsIdandUserid.setQuantity(goodsCarByGoodsIdandUserid.getQuantity()-quantity);
                    if (goodsCarByGoodsIdandUserid.getQuantity() <= 0){
                        goodsCarService.deleteGoodsCar(userid,goodsid);
                    }else {
                        goodsCarService.updateGoodscar(goodsCarByGoodsIdandUserid);
                    }
                    checkGoodscar = true;
                }
            }
//            创建购物车对象
            //读取数据库数据
            //并添加进去
        }
        return "ok";
    }













    private String listToStringAndAddToCookie(HttpServletResponse response, String data, List<GoodsCar> goodscarbycookie) {
        //将购物车集合转换为jsonstring类型并覆盖到cookie中
        String s = JSON.toJSONString(goodscarbycookie);
        try {
            s = URLEncoder.encode(s, "UTF-8");
            data = s;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        Cookie cookie = new Cookie("goodscar", s);
        cookie.setPath("/");
        cookie.setMaxAge(60 * 60 * 24 * 30);
        response.addCookie(cookie);
        return data;
    }

    private GoodsCar CreateGoodsCar(int goodsid, int quantity,int userid) {
        //创建单个购物车对象
        GoodsCar goodsCar = new GoodsCar();
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
        Timestamp ts = new Timestamp(date.getTime());

        if (userid != -1){
            goodsCar.setUserid(userid);
        }

        goodsCar.setAddtime(ts);
        goodsCar.setGoodsid(goodsid);
        goodsCar.setGoods(goodsService.findGoodsById(goodsid));
        goodsCar.setQuantity(quantity);
        return goodsCar;
    }


    @ResponseBody
    @RequestMapping(value = "/getGoodsCar" , method = RequestMethod.POST)
    public String getGoodsCar(HttpServletRequest request){
        // 检查session是否有登录标识
        Object loginName = request.getSession().getAttribute("loginName");
        if (null == loginName || !(loginName instanceof String)) {
            List<GoodsCar> goodscarbycookie = getGoodscarbycookie(request);
            return JSON.toJSONString(goodscarbycookie);
        }else {

            List<GoodsCar> goodscarlist = goodsCarService.findGoodsCarByUserId((Integer) request.getSession().getAttribute("userid"));

            //已经登录
            return JSON.toJSONString(goodscarlist);
        }
    }

    //写一个从cookie中获取购物车的方法，如果获取不到返回空
    //购物车结构
    //GoodsCar实体类为购物车单个商品
//    List<GoodsCar>为整个购物车 jsontostring后发送到前台
    //cookie结构
    //list to string 字符串
    public List<GoodsCar> getGoodscarbycookie (HttpServletRequest request){
        String cookieName = "goodscar";
        //获取cookie
        Cookie[] cookies =  request.getCookies();
        if(cookies != null){
            //存在cookie
            boolean checkcar = false;
            List<GoodsCar> goodsCarList = null;
            for(Cookie cookie : cookies) {
                //遍历cookie，检查购物车cookie
                if (cookie.getName().equals(cookieName)) {
                    //存在购物车cookie
                    checkcar = true;
                    //获取cookie
                    String value = cookie.getValue();
                    try {
                        value = URLDecoder.decode(value, "utf-8");
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                    goodsCarList = JSON.parseObject(value, new TypeReference<List<GoodsCar>>() {});
                }
            }
            return goodsCarList;
                //存在购物车cookie
        }else {
            return null;
        }
    }

    public void cookieCartToDatabase(HttpServletRequest request){
        List<GoodsCar> goodscarbycookie = getGoodscarbycookie(request);
        int userid = (Integer) request.getSession().getAttribute("userid");
        List<GoodsCar> goodsCarByUserId = goodsCarService.findGoodsCarByUserId(userid);
        if (goodscarbycookie != null){

            for (GoodsCar goodsCar : goodscarbycookie) {
                //将用户id放入
                goodsCar.setUserid(userid);
                //与数据库中合并
                boolean flag = false;
                for (GoodsCar car : goodsCarByUserId) {
                    if (car.getGoodsid() == goodsCar.getGoodsid()){
                        car.setQuantity(car.getQuantity()+goodsCar.getQuantity());
                        goodsCarService.updateGoodscar(car);
                        flag = true;
                    }
                }
                if (!flag){
                    goodsCarService.insertGOodscar(goodsCar);
                }
            }
        }

    }

    @RequestMapping("/cartpage")
    public String goCartPage (Model model){
        model.addAttribute("classes",classesService.AllClasses());

        return "YiHome/cart";
    }
    @RequestMapping("/toCheckOutPage")
    public String goCheckOutPage (Model model){
        model.addAttribute("classes",classesService.AllClasses());

        return "YiHome/cart";
    }
    @ResponseBody
    @RequestMapping(value = "/getCartSummary" , method = RequestMethod.POST)
    public String getCartSummary (String arr){
        //获取购物车摘要
        String[] newarr = arr.split(",");
        BigDecimal sumprice = new BigDecimal(0);
        for (int i = 0; i < newarr.length; i++) {
            if(newarr[i] == null || newarr[i].isEmpty()){
                continue;
            }
            GoodsCar goodsCarId = goodsCarService.findGoodsCarId(newarr[i]);
            Integer quantity = goodsCarId.getQuantity();
            BigDecimal nowPrice = goodsCarId.getGoods().getNowPrice();
            BigDecimal newquantity = new BigDecimal(quantity);
//            System.out.println(newquantity.toString());
//            System.out.println(nowPrice.toString());
            sumprice = sumprice.add(newquantity.multiply(nowPrice));
        }
        BigDecimal bigDecimal = sumprice.setScale(2);
        String s = bigDecimal.toString();
        return s;
    }
}
