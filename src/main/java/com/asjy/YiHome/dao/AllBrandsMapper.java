package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.AllBrands;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface AllBrandsMapper {
    List<AllBrands> findAllBrandsAll();
    int insertAllBrands(AllBrands a1);
    int deleteAllBrandsById(String id);
    List<AllBrands> findAllBrandsByIds(int id);
    int updateAllBrands (AllBrands a1);
    List<AllBrands> findBrandsByCommend();
}
