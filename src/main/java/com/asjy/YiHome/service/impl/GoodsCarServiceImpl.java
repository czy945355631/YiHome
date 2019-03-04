package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.dao.GoodsCarMapper;
import com.asjy.YiHome.model.GoodsCar;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.service.GoodsCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsCarServiceImpl implements GoodsCarService {
    @Autowired
    GoodsCarMapper goodsCarMapper;
    @Autowired
    GoodsServiceImpl goodsService;

    @Override
    public List<GoodsCar> findGoodsCarByUserId(int userid) {
        //根据用户id查找购物车
        List<GoodsCar> goodsCarByUserId = goodsCarMapper.findGoodsCarByuserid(String.valueOf(userid));
        //将商品对象添加进去
        if (goodsCarByUserId.size()!=0){
            for (GoodsCar goodsCar : goodsCarByUserId) {
                TblGoods goodsById = goodsService.findGoodsById(goodsCar.getGoodsid());
                goodsCar.setGoods(goodsById);
            }
        }

        return goodsCarByUserId;
    }
    @Override
    public GoodsCar findGoodsCarByGoodsId(int userid,int goodsid) {
        //根据用户id与商品id查找购物车
        List<GoodsCar> goodsCarByCondition = goodsCarMapper.findGoodsCarByuserandgoodsid(String.valueOf(userid), String.valueOf(goodsid));
        return goodsCarByCondition.get(0);
    }

    @Override
    public boolean updateGoodscar(GoodsCar goodsCar) {
        boolean b = goodsCarMapper.updateGoodsCar(goodsCar);
        return b;
    }

    @Override
    public boolean insertGOodscar(GoodsCar goodsCar) {
        boolean b = goodsCarMapper.insertGoodsCar(goodsCar);
        return b;
    }

    @Override
    public boolean deleteGoodsCar(int userid, int goodsid) {
        boolean b = goodsCarMapper.deleteGoodsCar(String.valueOf(userid), String.valueOf(goodsid));
        return b;
    }

    @Override
    public GoodsCar findGoodsCarId(String id) {
        //根据购物车id查找购物车
        List<GoodsCar> goodsCarByCondition = goodsCarMapper.findGoodsCarId(id);
        if (goodsCarByCondition.size() == 0){
            return null;
        }else {
            for (GoodsCar goodsCar : goodsCarByCondition) {
                TblGoods goodsById = goodsService.findGoodsById(goodsCar.getGoodsid());
                goodsCar.setGoods(goodsById);
            }
            return goodsCarByCondition.get(0);
        }

    }

}
