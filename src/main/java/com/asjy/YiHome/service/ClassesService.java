package com.asjy.YiHome.service;

import com.asjy.YiHome.model.AllClasses;

import java.util.List;

public interface ClassesService {
    List<AllClasses> AllClasses ();
    AllClasses findClassesById(int id);
    boolean updateClasses(AllClasses c1);
    List<AllClasses> findAllClassesBydisplay();
    List<AllClasses> findAllClassesTwo();
    List<AllClasses> findAllClassesTwoAndThree();
    int doClassesdelete(String id);
}
