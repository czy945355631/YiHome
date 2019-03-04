package com.asjy.YiHome.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface floorGoodsMapper {
    int insertFloorGoods(@Param("floorid") Integer floorid, @Param("goodsid") Integer goodsid);
    int deleteFloorGoodsByGoodsId(String goodsid);
}
