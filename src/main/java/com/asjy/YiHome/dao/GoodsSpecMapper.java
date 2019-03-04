package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.GoodsSpec;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface GoodsSpecMapper {
    int insertGoodsSpec(GoodsSpec goodsSpec);
    List<GoodsSpec> findGoodsSpecByGoodsId(Integer goodsid);
    List<GoodsSpec> findGoodsSpecByArtno(Integer artno);
    List<GoodsSpec> fingGoodsSpecvByspecidAndArtno(Integer specid,Integer artno);
    List<GoodsSpec> findGoodsSpecByCondition(GoodsSpec goodsSpec);
    int deleteGoodSpecByGoodsId(String goodsid);
}
