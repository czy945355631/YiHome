package com.asjy.YiHome.Controller.BsController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.asjy.YiHome.model.AllClasses;
import com.asjy.YiHome.model.TblFloor;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.FloorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/BsPage")
public class FloorController {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    FloorServiceImpl floorService;
    @RequestMapping("/floor")
    public String showfloor(){
        return "/YiHomeManagerSystem/floor-show";
    }

    @RequestMapping("/goFloorAdd")
    public String goFloorAdd(Model model){
        //一二级分类
        model.addAttribute("classes",classesService.findAllClassesTwoAndThree());
        return "/YiHomeManagerSystem/floor-add";
    }
    @RequestMapping("/doFloorAdd")
    public String doFloorAdd(TblFloor tblFloor){
        List<AllClasses> classesList = tblFloor.getClassesList();
        //集合去空
        for (int i = 0; i < classesList.size(); i++) {
            if (classesList.get(i) == null || classesList.get(i).getId() == null ||classesList.contains(null)) {
                classesList.remove(i);
            }
        }
        tblFloor.setClassesList(classesList);
        String str = JSON.toJSONString(tblFloor);
        floorService.insertFloor(tblFloor);
        return "redirect:/BsPage/floor";
    }
    @ResponseBody
    @RequestMapping("/floor/dodelete")
    public String dodelete(String id){
        int i = floorService.deleteGoods(id);
        return null;
    }
    @RequestMapping("/floor/goFloorUpdate")
    public String goFloorUpdate(String id,Model model){
        TblFloor floorById = floorService.getFloorById(id);
        model.addAttribute("classes",classesService.findAllClassesTwoAndThree());
        model.addAttribute("floormodel",floorById);
        String s = JSON.toJSONString(floorById);
        System.out.println(s);
        return "/YiHomeManagerSystem/floorupdate";
    }
    @RequestMapping("/doFloorUpdate")
    public String doFloorUpdate(TblFloor tblFloor){
        List<AllClasses> classesList = tblFloor.getClassesList();
        //集合去空
        for (int i = 0; i < classesList.size(); i++) {
            if (classesList.get(i) == null || classesList.get(i).getId() == null ||classesList.contains(null)) {
                classesList.remove(i);
            }
        }
        tblFloor.setClassesList(classesList);
        //删除楼层-分类 楼层-商品数据

        String str = JSON.toJSONString(tblFloor);
        floorService.updateFloor(tblFloor);
        return "redirect:/BsPage/floor";
    }

}
