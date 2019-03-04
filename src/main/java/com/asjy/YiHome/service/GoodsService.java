package com.asjy.YiHome.service;

import com.asjy.YiHome.model.GoodsSpec;
import com.asjy.YiHome.model.TblGoods;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsService {
    PageInfo<TblGoods> queryGoodsList(int currentPage, int pageSize);
    int insertGoods(TblGoods goods);
    List<TblGoods> getGoodsListByClassesId(String classesid);
    int deleteGoods(String id);
    TblGoods findGoodsById(int id);
    List<GoodsSpec> fingGoodsSpecByGoodsId(Integer goodsid);
    List<GoodsSpec> fingGoodsSpecByArtno(Integer artno);
    List<TblGoods> findGoodsBySearchName(String SearchName,String brandid,String classesid);
    int updateGoods(TblGoods goods);
    List<TblGoods> findGoodsOrderBySales();
    List<TblGoods> findGoodsOrderByShowstatus();
    List<TblGoods> findGoodsByBrandid( String brandid, String goodsid);




}
