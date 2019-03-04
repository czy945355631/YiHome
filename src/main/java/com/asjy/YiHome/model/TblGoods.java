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
import java.util.List;

/**
 * TBL_GOODS
 * 
 * @author czy
 * @version 1.0.0 2018-12-17
 */
public class TblGoods {
    /** 版本号 */
    private static final long serialVersionUID = 2047454083786426933L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** goodsname */
    private String goodsname;

    /** brandId */
    private Integer brandId;

    private AllBrands brand;
    private AllClasses classes;
    private List<AllSpec> spec;

    public AllBrands getBrand() {
        return brand;
    }

    public void setBrand(AllBrands brand) {
        this.brand = brand;
    }

    public AllClasses getClasses() {
        return classes;
    }

    public void setClasses(AllClasses classes) {
        this.classes = classes;
    }

    public List<AllSpec> getSpec() {
        return spec;
    }

    public void setSpec(List<AllSpec> spec) {
        this.spec = spec;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getClassesName() {
        return classesName;
    }

    public void setClassesName(String classesName) {
        this.classesName = classesName;
    }

    private String brandName;

    /** classesId */
    private Integer classesId;
    private String classesName;

    /** oldPrice */
    private BigDecimal oldPrice;

    /** nowPrice */
    private BigDecimal nowPrice;

    /** store */
    private Integer store;

    /** artno */
    private Integer artno;

    /** sales */
    private Integer sales;

    /** clickRate */
    private Integer clickRate;

    /** path */
    private String path;
    private String path2;

    public String getPath2() {
        return path2;
    }

    public void setPath2(String path2) {
        this.path2 = path2;
    }

    /** showstatus */
    private Integer showstatus;

    /** datails */
    private String datails;

    /** weight */
    private Double weight;

    /** volume */
    private String volume;

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
     * 获取goodsname
     * 
     * @return goodsname
     */
    public String getGoodsname() {
        return this.goodsname;
    }

    /**
     * 设置goodsname
     * 
     * @param goodsname
     */
    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    /**
     * 获取brandId
     * 
     * @return brandId
     */
    public Integer getBrandId() {
        return this.brandId;
    }

    /**
     * 设置brandId
     * 
     * @param brandId
     */
    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    /**
     * 获取classesId
     * 
     * @return classesId
     */
    public Integer getClassesId() {
        return this.classesId;
    }

    /**
     * 设置classesId
     * 
     * @param classesId
     */
    public void setClassesId(Integer classesId) {
        this.classesId = classesId;
    }

    /**
     * 获取oldPrice
     * 
     * @return oldPrice
     */
    public BigDecimal getOldPrice() {
        return this.oldPrice;
    }

    /**
     * 设置oldPrice
     * 
     * @param oldPrice
     */
    public void setOldPrice(BigDecimal oldPrice) {
        this.oldPrice = oldPrice;
    }

    /**
     * 获取nowPrice
     * 
     * @return nowPrice
     */
    public BigDecimal getNowPrice() {
        return this.nowPrice;
    }

    /**
     * 设置nowPrice
     * 
     * @param nowPrice
     */
    public void setNowPrice(BigDecimal nowPrice) {
        this.nowPrice = nowPrice;
    }

    /**
     * 获取store
     * 
     * @return store
     */
    public Integer getStore() {
        return this.store;
    }

    /**
     * 设置store
     * 
     * @param store
     */
    public void setStore(Integer store) {
        this.store = store;
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

    /**
     * 获取sales
     * 
     * @return sales
     */
    public Integer getSales() {
        return this.sales;
    }

    /**
     * 设置sales
     * 
     * @param sales
     */
    public void setSales(Integer sales) {
        this.sales = sales;
    }

    /**
     * 获取clickRate
     * 
     * @return clickRate
     */
    public Integer getClickRate() {
        return this.clickRate;
    }

    /**
     * 设置clickRate
     * 
     * @param clickRate
     */
    public void setClickRate(Integer clickRate) {
        this.clickRate = clickRate;
    }

    /**
     * 获取path
     * 
     * @return path
     */
    public String getPath() {
        return this.path;
    }

    /**
     * 设置path
     * 
     * @param path
     */
    public void setPath(String path) {
        this.path = path;
    }

    /**
     * 获取showstatus
     * 
     * @return showstatus
     */
    public Integer getShowstatus() {
        return this.showstatus;
    }

    /**
     * 设置showstatus
     * 
     * @param showstatus
     */
    public void setShowstatus(Integer showstatus) {
        this.showstatus = showstatus;
    }

    /**
     * 获取datails
     * 
     * @return datails
     */
    public String getDatails() {
        return this.datails;
    }

    /**
     * 设置datails
     * 
     * @param datails
     */
    public void setDatails(String datails) {
        this.datails = datails;
    }

    /**
     * 获取weight
     * 
     * @return weight
     */
    public Double getWeight() {
        return this.weight;
    }

    /**
     * 设置weight
     * 
     * @param weight
     */
    public void setWeight(Double weight) {
        this.weight = weight;
    }

    /**
     * 获取volume
     * 
     * @return volume
     */
    public String getVolume() {
        return this.volume;
    }

    /**
     * 设置volume
     * 
     * @param volume
     */
    public void setVolume(String volume) {
        this.volume = volume;
    }
}