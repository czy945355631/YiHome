package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.dao.AllClassesMapper;
import com.asjy.YiHome.model.AllClasses;
import com.asjy.YiHome.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service()
public class ClassesServiceImpl implements ClassesService {
    @Autowired
    AllClassesMapper classesMapper;
    @Override
    //查询分类首页数据
    public List<AllClasses> AllClasses() {
        List<AllClasses> allClassesByCondition = classesMapper.findClassesListlevel1();
        return allClassesByCondition;
    }

    @Override
    public AllClasses findClassesById(int id) {
        List<AllClasses> allClassesByIds = classesMapper.findAllClassesByIds(id);
        return allClassesByIds.get(0);
    }

    @Override
    public boolean updateClasses(AllClasses c1) {
        Integer pid = c1.getPid();
        List<AllClasses> allClassesByIds = classesMapper.findAllClassesByIds(pid);
        if (allClassesByIds.size() > 0){
            AllClasses allClasses = allClassesByIds.get(0);
            Integer level = allClasses.getLevel();
            c1.setLevel(level+1);
        }else {
            c1.setLevel(1);
        }
        int i = classesMapper.updateAllClasses(c1);
        return i>0?true:false;
    }

    @Override
    //查询一二级分类
    public List<AllClasses> findAllClassesTwo() {
        List<AllClasses> allClassesAlltwo = classesMapper.findAllClassesAlltwo();
        return allClassesAlltwo;
    }

    @Override
    public List<AllClasses> findAllClassesTwoAndThree() {
        List<AllClasses> allClassesTwoAndThree = classesMapper.findAllClassesTwoAndThree();
        return allClassesTwoAndThree;
    }

    @Override
    public int doClassesdelete(String id) {
        classesMapper.deleteAllClassesById(id);
        return 0;
    }

    //查询显示状态的分类
    @Override
    public List<AllClasses> findAllClassesBydisplay() {
        List<AllClasses> allClassesBydisplay = classesMapper.findAllClassesBydisplay();
        return allClassesBydisplay;
    }

    public boolean addClasses(AllClasses c1) {
        Integer pid = c1.getPid();
        List<AllClasses> allClassesByIds = classesMapper.findAllClassesByIds(pid);
        if (allClassesByIds.size() > 0){
            AllClasses allClasses = allClassesByIds.get(0);
            Integer level = allClasses.getLevel();
            c1.setLevel(level+1);
        }else {
            c1.setLevel(1);
        }
        System.out.println(c1.getPath());
        int i = classesMapper.addClasses(c1);
        return i>0?true:false;
    }
}
