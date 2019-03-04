package com.asjy.YiHome.service;

import com.asjy.YiHome.model.AllBrands;

import java.util.List;

public interface BrandsService {
    List<AllBrands> getBrandsAll();
    boolean addBrand(AllBrands a1);
    int doBranddelete(String id);
    AllBrands findBrandById(int id);
    boolean upBrand(AllBrands a1);
    List<AllBrands> getBrandsCommend();
}
