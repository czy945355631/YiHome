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

import java.util.List;

/**
 * GOODS_SPEC
 * 
 * @author czy
 * @version 1.0.0 2018-12-24
 */
public class GoodsSpec {
    /** 版本号 */
    private static final long serialVersionUID = -7157931143618191306L;

    /** id */
    private Integer id;

    /** goodsid */
    private Integer goodsid;

    /** specid */
    private Integer specid;

    /** specvid */
    private Integer specvid;

    /** artno */
    private Integer artno;
    private AllSpec spec;

    public AllSpec getSpec() {
        return spec;
    }

    public void setSpec(AllSpec spec) {
        this.spec = spec;
    }

    public List<SpecValue> getSpecValueList() {
        return specValueList;
    }

    public void setSpecValueList(List<SpecValue> specValueList) {
        this.specValueList = specValueList;
    }

    private List<SpecValue> specValueList;

    public GoodsSpec(Integer id, Integer goodsid, Integer specid, Integer specvid, Integer artno) {
        this.id = id;
        this.goodsid = goodsid;
        this.specid = specid;
        this.specvid = specvid;
        this.artno = artno;
    }
    public  GoodsSpec(){

    }
    public GoodsSpec(Integer specid) {
        this.specid = specid;
    }

    public GoodsSpec(Integer specid, Integer artno) {
        this.specid = specid;
        this.artno = artno;
    }

    public GoodsSpec(Integer specid, Integer artno, AllSpec spec) {
        this.specid = specid;
        this.artno = artno;
        this.spec = spec;
    }

    public GoodsSpec(Integer specid, Integer specvid, Integer artno) {
        this.specid = specid;
        this.specvid = specvid;
        this.artno = artno;
    }

    public GoodsSpec(Integer id, Integer goodsid, Integer specid, Integer specvid, Integer artno, AllSpec spec, List<SpecValue> specValueList) {
        this.id = id;
        this.goodsid = goodsid;
        this.specid = specid;
        this.specvid = specvid;
        this.artno = artno;
        this.spec = spec;
        this.specValueList = specValueList;
    }

    public GoodsSpec(Integer goodsid, Integer specid, Integer specvid, Integer artno) {
        this.goodsid = goodsid;
        this.specid = specid;
        this.specvid = specvid;
        this.artno = artno;
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
     * 获取specid
     * 
     * @return specid
     */
    public Integer getSpecid() {
        return this.specid;
    }

    /**
     * 设置specid
     * 
     * @param specid
     */
    public void setSpecid(Integer specid) {
        this.specid = specid;
    }

    /**
     * 获取specvid
     * 
     * @return specvid
     */
    public Integer getSpecvid() {
        return this.specvid;
    }

    /**
     * 设置specvid
     * 
     * @param specvid
     */
    public void setSpecvid(Integer specvid) {
        this.specvid = specvid;
    }

    /**
     * 获取artno
     * 
     * @return artno
     */
    public Integer getArtno() {
        return this.artno;
    }

    /**
     * 设置artno
     * 
     * @param artno
     */
    public void setArtno(Integer artno) {
        this.artno = artno;
    }
}