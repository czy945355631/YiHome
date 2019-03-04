package com.asjy.YiHome.service;

import com.asjy.YiHome.model.GoodsCar;

import java.util.List;

public interface GoodsCarService {
    List<GoodsCar> findGoodsCarByUserId(int userid);
    GoodsCar findGoodsCarByGoodsId(int userid,int goodsid);
    boolean updateGoodscar(GoodsCar goodsCar);
    boolean insertGOodscar(GoodsCar goodsCar);
    boolean deleteGoodsCar(int userid,int goodsid);
    GoodsCar findGoodsCarId(String id);
}
