package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.dao.AllBrandsMapper;
import com.asjy.YiHome.model.AllBrands;
import com.asjy.YiHome.service.BrandsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service()
public class BrandsServiceImpl implements BrandsService {
    @Autowired
    AllBrandsMapper brandsMapper;
    @Override
    public List<AllBrands> getBrandsAll() {
        List<AllBrands> allBrands = brandsMapper.findAllBrandsAll();

        return allBrands;
    }


    @Override
    public boolean addBrand(AllBrands a1) {
        int i = brandsMapper.insertAllBrands(a1);
        return i>0?true:false;
    }

    @Override
    public int doBranddelete(String id) {
        brandsMapper.deleteAllBrandsById(id);
        return 0;
    }

    @Override
    public AllBrands findBrandById(int id) {
        List<AllBrands> allBrandsByIds = brandsMapper.findAllBrandsByIds(id);
        AllBrands brand = allBrandsByIds.get(0);
        return brand;
    }

    @Override
    public boolean upBrand(AllBrands a1) {
        int i = brandsMapper.updateAllBrands(a1);
        return i>0?true:false;
    }

    @Override
    public List<AllBrands> getBrandsCommend() {
        List<AllBrands> brandsByCommend = brandsMapper.findBrandsByCommend();
        return brandsByCommend;
    }
}
