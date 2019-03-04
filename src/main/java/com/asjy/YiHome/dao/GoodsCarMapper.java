package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.GoodsCar;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface GoodsCarMapper {
    List<GoodsCar> findGoodsCarByuserid(@Param(value="userid")String userid);
    List<GoodsCar> findGoodsCarId(@Param(value="id")String id);
    List<GoodsCar> findGoodsCarByuserandgoodsid(@Param(value="userid")String userid,@Param(value="goodsid")String goodsid);
    boolean insertGoodsCar(GoodsCar goodsCar);
    boolean updateGoodsCar(GoodsCar goodsCar);
    boolean deleteGoodsCar(@Param(value="userid")String userid,@Param(value="goodsid")String goodsid);

}
