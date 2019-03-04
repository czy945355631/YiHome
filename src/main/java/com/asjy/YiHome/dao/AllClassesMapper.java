package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.AllClasses;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface AllClassesMapper {
    List<AllClasses> findAllClassesTwoAndThree();
    List<AllClasses> findClassesListlevel1();
    List<AllClasses> findAllClassesByIds(int id);
    List<AllClasses> findAllClassesBydisplay();
    int updateAllClasses (AllClasses c1);
    List<AllClasses> findAllClassesAlltwo();
    int addClasses(AllClasses c1);
    int deleteAllClassesById(String id);

}
