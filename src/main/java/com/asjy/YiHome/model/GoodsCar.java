/*
 * Welcome to use the TableGo Tools.
 * 
 * http://vipbooks.iteye.com
 * http://blog.csdn.net/vipbooks
 * http://www.cnblogs.com/vipbooks
 * 
 * Author: bianj
 * Email: edinsker@163.com
 * Version: 5.9.0
 */
package com.asjy.YiHome.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

/**
 * GOODS_CAR
 * 
 * @author czy
 * @version 1.0.0 2019-01-10
 */
public class GoodsCar {

    /** 购物车id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** 用户userid */
    private Integer userid;

    /** 商品goodsid */
    private Integer goodsid;

    /** 数量 */
    private Integer quantity;

    //商品实体类
    private TblGoods goods;

    private int items;
    //单品总价
    public BigDecimal sumprice (){
        return goods.getNowPrice().multiply(new BigDecimal(quantity));
    };




    public TblGoods getGoods() {
        return goods;
    }

    public void setGoods(TblGoods goods) {
        this.goods = goods;
    }

    /**
     * 获取id
     * 
     * @return id
     */
    public Integer getId() {
        return this.id;
    }

    /**
     * 设置id
     * 
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取addtime
     * 
     * @return addtime
     */
    public Timestamp getAddtime() {
        return this.addtime;
    }

    /**
     * 设置addtime
     * 
     * @param addtime
     */
    public void setAddtime(Timestamp addtime) {
        this.addtime = addtime;
    }

    /**
     * 获取userid
     * 
     * @return userid
     */
    public Integer getUserid() {
        return this.userid;
    }

    /**
     * 设置userid
     * 
     * @param userid
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * 获取goodsid
     * 
     * @return goodsid
     */
    public Integer getGoodsid() {
        return this.goodsid;
    }

    /**
     * 设置goodsid
     * 
     * @param goodsid
     */
    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    /**
     * 获取quantity
     * 
     * @return quantity
     */
    public Integer getQuantity() {
        return this.quantity;
    }

    /**
     * 设置quantity
     * 
     * @param quantity
     */
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}