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

/**
 * FLOOR_GOODS
 * 
 * @author czy
 * @version 1.0.0 2018-12-28
 */
public class FloorGoods {
    /** 版本号 */
    private static final long serialVersionUID = 4536016687745019132L;

    /** id */
    private Integer id;

    /** floorid */
    private Integer floorid;

    /** goodsid */
    private Integer goodsid;

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
     * 获取floorid
     * 
     * @return floorid
     */
    public Integer getFloorid() {
        return this.floorid;
    }

    /**
     * 设置floorid
     * 
     * @param floorid
     */
    public void setFloorid(Integer floorid) {
        this.floorid = floorid;
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
}