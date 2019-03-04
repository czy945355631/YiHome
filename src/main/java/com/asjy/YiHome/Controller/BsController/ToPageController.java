package com.asjy.YiHome.Controller.BsController;

import com.alibaba.fastjson.JSON;
import com.asjy.YiHome.model.*;
import com.asjy.YiHome.service.impl.BrandsServiceImpl;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.OrderServiceImpl;
import com.asjy.YiHome.service.impl.SpecServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/BsPage")
public class ToPageController {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    OrderServiceImpl orderService;
    @Value("${file.uploadFolder}")
    private String uploadFolder;
    @RequestMapping("/goIndex")
    public String goIndex(Model model){
        List<Map<String, Object>> sumprice = orderService.Sumprice();
        String s = JSON.toJSONString(sumprice);
        System.out.println(s);
        model.addAttribute("echarts",sumprice);
        return "YiHomeManagerSystem/index";

    }

    @RequestMapping("/goLogin")
    public String goLogin(){
        return "YiHomeManagerSystem/login";
    }
    @RequestMapping("/test")
    public String Test(){
        return "YiHomeManagerSystem/test";
    }
    @RequestMapping("/goClassesManager")
    public String goClassManager(Model model){
        List<AllClasses> allClasses = classesService.AllClasses();
//
        model.addAttribute("list",allClasses);
        return "YiHomeManagerSystem/classes-manager";
    }
    @RequestMapping("/goTest")
    public String goTest(){
        return "YiHomeManagerSystem/test2";
    }
    @RequestMapping("/goBrands")
    public String goBrands(){
        return "YiHomeManagerSystem/brands-show";
    }
    @RequestMapping("/goOrder")
    public String goOrder(Model model){
        List<Ordermodel> orderAll = orderService.findOrderAll();
        model.addAttribute("orderlist",orderAll);
        return "YiHomeManagerSystem/order-show";
    }
    @RequestMapping("/goSpec")
    public String goSpec(){
        return "YiHomeManagerSystem/spec-show";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate (AllClasses c1){
        boolean b = classesService.updateClasses(c1);
        return "redirect:/BsPage/goClassesManager";
    }
    @RequestMapping(value="/doAdd",method= RequestMethod.POST)
    public String doAdd (HttpServletRequest req,AllClasses c1)throws Exception{

        MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)req;
        MultipartFile file = mreq.getFile("path1");
        if (StringUtils.isNotBlank(file.getOriginalFilename())){
            String fileName = file.getOriginalFilename();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String realFileName = sdf.format(new Date())+fileName.substring(fileName.lastIndexOf('.'));
            FileOutputStream fos = new FileOutputStream("D:\\uploadFiles/"+realFileName);
            fos.write(file.getBytes());
            fos.flush();
            fos.close();
            c1.setPath(realFileName);
        }

        boolean b = classesService.addClasses(c1);
        return "redirect:/BsPage/goClassesManager";
    }
    @RequestMapping("/goSpecAdd")
    public String goSpecAdd(){
        return "YiHomeManagerSystem/Spec-add";
    }



    @Autowired
    SpecServiceImpl specService;
    @RequestMapping("/doSpecAdd")
    public String doSpecAdd(AllSpec spec){
        List<SpecValue> specValues = spec.getSpecValues();
        //集合去空
        specValues.removeAll(Collections.singleton(null));
        spec.setSpecValues(specValues);
        specService.addSpec(spec);
        return "redirect:/BsPage/goSpec";
    }

//    @RequestMapping("/showClasses")
//    public ModelAndView showClasses(ModelAndView mav){
//        List<AllClasses> allClasses = classesService.AllClasses();
//        mav.addObject("list_Classes",allClasses);
//        mav.setViewName("/YiHomeManagerSystem/classesList-model");
//        return mav;
//    }
    @Autowired
    BrandsServiceImpl brandsService;
    @RequestMapping(value = "/doBrandUpdate",method= RequestMethod.POST)
    public String doBrandUpdate(HttpServletRequest req,String brandname,Integer seq,Integer recommend,Integer id) throws Exception{
        AllBrands brands = new AllBrands();
        MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)req;
        MultipartFile file = mreq.getFile("path");
        if(StringUtils.isNotBlank(file.getOriginalFilename())) {
            String fileName = file.getOriginalFilename();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String realFileName = sdf.format(new Date()) + fileName.substring(fileName.lastIndexOf('.'));
            FileOutputStream fos = new FileOutputStream("D:\\uploadFiles/" + realFileName);
            fos.write(file.getBytes());
            fos.flush();
            fos.close();
            System.out.println(realFileName);
            brands.setPath(realFileName);
        }
        brands.setId(id);
        brands.setBrandname(brandname);
        brands.setSeq(seq);
        brands.setRecommend(recommend);
        boolean b = brandsService.upBrand(brands);
        return "redirect:/BsPage/goBrands";
    }
    @ResponseBody
    @RequestMapping("/test1234")
    public Map<String,Object> test(){
        List<AllBrands> brandsAll = brandsService.getBrandsAll();
        Map<String,Object> map = new HashMap<>();
        map.put("data",brandsAll);
        map.put("currentPage",1);
        map.put("totalPage",10);
        map.put("totalData",200);
        String s = JSON.toJSONString(map);
        System.out.println(s);
        return map;
    }
}
