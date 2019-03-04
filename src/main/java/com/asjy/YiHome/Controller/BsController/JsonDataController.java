package com.asjy.YiHome.Controller.BsController;

import com.alibaba.fastjson.JSON;
import com.asjy.YiHome.model.*;
import com.asjy.YiHome.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/Bsjson")
public class JsonDataController {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    BrandsServiceImpl brandsService;
    @Autowired
    SpecServiceImpl spevService;
    @Autowired
    FloorServiceImpl floorService;
    @Autowired
    GoodsServiceImpl goodsService;
//    分类修改
    @RequestMapping("/updatePage")
    public Map<String, Object> updatePage(@RequestBody Map<String, Object> content){
        String id = content.get("id").toString();
        AllClasses classesById = classesService.findClassesById(Integer.parseInt(id));
        Map<String, Object> map =new HashMap<>();
        map.put("classes",classesById);
        List<AllClasses> allClasses = classesService.findAllClassesTwo();
        map.put("list",allClasses);
        return map;
    }
//    品牌修改
    @RequestMapping("/brandupdate")
    public Map<String, Object> brandupdate(@RequestBody Map<String, Object> content){
//        Integer id = allClasses.getId();
        String id = content.get("id").toString();
        AllBrands brandById = brandsService.findBrandById(Integer.parseInt(id));
        Map<String, Object> map =new HashMap<>();
        map.put("brands",brandById);
        return map;
    }

    @PostMapping("/addPage")
    public Map<String, Object> addPage(){
        Map<String, Object> map =new HashMap<>();
        List<AllClasses> allClasses = classesService.findAllClassesTwo();
        map.put("list",allClasses);
        return map;
    }
    @RequestMapping("/getSpecAll")
    public Map<String,List<AllSpec>> getSpecAll(){
        Map<String,List<AllSpec>> specDate = new HashMap<>();
        List<AllSpec> specAll = spevService.getSpecAll();
        specDate.put("data",specAll);
        return specDate;
    }

    @RequestMapping("/showBrands")
    public Map<String,List<AllBrands>> showBrands(){
        List<AllBrands> brandsAll = brandsService.getBrandsAll();
        Map<String,List<AllBrands>> brandsData = new HashMap<>();
        brandsData.put("data",brandsAll);
        String s = JSON.toJSONString(brandsData);
        System.out.println(s);
        return brandsData;
    }



    @RequestMapping("/getGoodsaddPageSpecvlist")
    public Map<String,List<SpecValue>> getGoodsaddPageSpecvlist(String specid){
//        System.out.println(specid);
        Map<String,List<SpecValue>> specsData = new HashMap<>();
        AllSpec specById = spevService.findSpecById(specid);
        List<SpecValue> specValues = specById.getSpecValues();
        specsData.put("list",specValues);
        System.out.println(JSON.toJSON(specValues));

        return specsData;
    }

    @RequestMapping("/getFloorIndexData")
    public Map<String,List<TblFloor>> getFloorIndexData(){
        Map<String,List<TblFloor>> floorData = new HashMap<>();
        List<TblFloor> floorIndexData = floorService.getFloorIndexData();
        System.out.println(floorIndexData.size());
        floorData.put("data",floorIndexData);
        return floorData;
    }

    @RequestMapping("/getFloorAddGoods")
    public Map<String,List<TblGoods>> getFloorAddGoods(String classesid){
        Map<String,List<TblGoods>> goodsData = new HashMap<>();
        List<TblGoods> goodsListByClassesId = goodsService.getGoodsListByClassesId(classesid);
        goodsData.put("list",goodsListByClassesId);
        return goodsData;
    }
    @RequestMapping("/doClassesdelete")
    public String doClassesdelete(String id){
        int i = classesService.doClassesdelete(id);
        return null;
    }
    @RequestMapping("/doBranddelete")
    public String doBranddelete(String id){
        int i = brandsService.doBranddelete(id);
        return null;
    }
}
