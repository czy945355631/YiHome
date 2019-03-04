package com.asjy.YiHome.service.impl;

import com.alibaba.fastjson.JSON;
import com.asjy.YiHome.dao.GoodsMapper;
import com.asjy.YiHome.dao.GoodsSpecMapper;
import com.asjy.YiHome.dao.SpecValueMapper;
import com.asjy.YiHome.dao.floorGoodsMapper;
import com.asjy.YiHome.model.AllSpec;
import com.asjy.YiHome.model.GoodsSpec;
import com.asjy.YiHome.model.SpecValue;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    GoodsMapper goodsMapper;
    @Autowired
    GoodsSpecMapper goodsSpecMapper;
    @Autowired
    SpecValueMapper specValueMapper;
    @Autowired
    floorGoodsMapper floorGoodsMapper;
    @Override
    public PageInfo<TblGoods> queryGoodsList(int start, int length) {
            PageHelper.startPage(start,length);
            List<TblGoods> allGoods = goodsMapper.findTblGoodsAll();
            PageInfo<TblGoods> pageInfo = new PageInfo<>(allGoods);
            return pageInfo;
    }

    @Override
    public int insertGoods(TblGoods goods) {
//        System.out.println(goods.getSpec().size());
        List<AllSpec> spec = goods.getSpec();
        int x = goodsMapper.insertTblGoods(goods);

        for (int i = 0; i < spec.size(); i++) {
            Integer specid = spec.get(i).getId();

            for (int i1 = 0; i1 < spec.get(i).getSpecValues().size(); i1++) {
                Integer specvid =spec.get(i).getSpecValues().get(i1).getId();
                if (specid == -1 || specvid == -1){
                    continue;
                }
                GoodsSpec goodsSpec =new GoodsSpec(goods.getId(),specid,specvid,goods.getArtno());
                goodsSpecMapper.insertGoodsSpec(goodsSpec);
            }
        }

        return x;
    }
    @Override
    public int updateGoods(TblGoods goods) {
//        System.out.println(goods.getSpec().size());
        List<AllSpec> spec = goods.getSpec();
        int x = goodsMapper.updateTblGoods(goods);
        //删除原有规格
        goodsSpecMapper.deleteGoodSpecByGoodsId(goods.getId().toString());
        if (spec != null){
            for (int i = 0; i < spec.size(); i++) {
                Integer specid = spec.get(i).getId();

                for (int i1 = 0; i1 < spec.get(i).getSpecValues().size(); i1++) {
                    Integer specvid =spec.get(i).getSpecValues().get(i1).getId();
                    if (specid == -1 || specvid == -1){
                        continue;
                    }
                    GoodsSpec goodsSpec =new GoodsSpec(goods.getId(),specid,specvid,goods.getArtno());
                    goodsSpecMapper.insertGoodsSpec(goodsSpec);
                }
            }
        }

        return x;
    }

    @Override
    public List<TblGoods> findGoodsOrderBySales() {
        List<TblGoods> tblGoodsAllOrderBysales = goodsMapper.findTblGoodsAllOrderBysales();
        return tblGoodsAllOrderBysales;
    }

    @Override
    public List<TblGoods> findGoodsOrderByShowstatus() {
        List<TblGoods> tblGoodsAllOrderByCommend = goodsMapper.findTblGoodsAllOrderByCommend();
        return tblGoodsAllOrderByCommend;
    }

    @Override
    public List<TblGoods> findGoodsByBrandid(String brandid,String goodsid) {
        List<TblGoods> tblGOodsByBrandId = goodsMapper.findTblGOodsByBrandId(brandid,goodsid);
        return tblGOodsByBrandId;
    }

    @Override
    public List<TblGoods> getGoodsListByClassesId(String classesId) {
        List<TblGoods> goodsListByClassesId = goodsMapper.getGoodsListByClassesId(classesId);
        return goodsListByClassesId;
    }

    @Override
    public int deleteGoods(String id) {
        int i = goodsMapper.deleteTblGoodsById(id);
        int i1 = goodsSpecMapper.deleteGoodSpecByGoodsId(id);
        int i2 = floorGoodsMapper.deleteFloorGoodsByGoodsId(id);
        return i;
    }

    @Override
    public TblGoods findGoodsById(int id) {
        List<TblGoods> tblGoodsById = goodsMapper.findTblGoodsById(id);
        if (tblGoodsById.size()!=0){

            return tblGoodsById.get(0);
        }else {
            return null;
        }
    }

    @Override
    public List<GoodsSpec> fingGoodsSpecByGoodsId(Integer goodsid) {
        List<GoodsSpec> goodsSpecByGoodsId = goodsSpecMapper.findGoodsSpecByGoodsId(goodsid);

        return goodsSpecByGoodsId;
    }
    @Override
    public List<GoodsSpec> fingGoodsSpecByArtno(Integer artno) {
        //首先根据货号获取商品规格中间表对象
        List<GoodsSpec> goodsSpec = goodsSpecMapper.findGoodsSpecByArtno(artno);
        for (int i = 0; i < goodsSpec.size(); i++) {
            goodsSpec.get(i).getSpec().setArtno(artno);
            //然后查询出商品规格中间表中的规格对象，并添加进去
            List<SpecValue> specvBySpecidAndArtno = specValueMapper.findSpecvBySpecidAndArtno(goodsSpec.get(i).getSpecid(), artno);

            for (int i1 = 0; i1 < specvBySpecidAndArtno.size() - 1; i1++) {
                for (int i2 = specvBySpecidAndArtno.size() -1; i2>i1; i2--) {
                    if(specvBySpecidAndArtno.get(i2).getId() == specvBySpecidAndArtno.get(i1).getId()){
                        specvBySpecidAndArtno.remove(i2);
                    }
                }
                
            }
            
            
            goodsSpec.get(i).getSpec().setSpecValues(specvBySpecidAndArtno);
        }
        String s = JSON.toJSONString(goodsSpec);
        return goodsSpec;
    }

    @Override
    public List<TblGoods> findGoodsBySearchName(String SearchName,String brandid,String classesid) {
        if (SearchName.isEmpty()){
            SearchName = "";
        }
        List<TblGoods> tblGoodsByCondition = goodsMapper.findTblGoodsByCondition(SearchName,brandid,classesid);
        return tblGoodsByCondition;
    }


}
