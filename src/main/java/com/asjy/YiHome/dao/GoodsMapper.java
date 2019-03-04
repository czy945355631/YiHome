package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.model.TblOrder;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Mapper
@Repository
@Resource
public interface GoodsMapper {
   List<TblGoods> findTblGoodsAll();
   int insertTblGoods(TblGoods goods);
   List<TblGoods> getGoodsListByClassesId(String classesId);
   int deleteTblGoodsById(String id);
   List<TblGoods> findTblGoodsById(int id);
   List<TblGoods> findTblGoodsByCondition(@Param("goodsname") String goodsname,@Param("brandId") String brandId,@Param("classesId") String classesId);
   int updateTblGoods(TblGoods goods);
   List<TblGoods> findTblGoodsAllOrderBysales();
   List<TblGoods> findTblGoodsAllOrderByCommend();
   List<TblGoods> findTblGOodsByBrandId(@Param("brandid")String brandid,@Param("goodsid")String goodsid);
}
