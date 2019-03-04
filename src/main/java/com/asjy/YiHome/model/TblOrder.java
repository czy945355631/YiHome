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
 * TBL_ORDER
 * 
 * @author czy
 * @version 1.0.0 2019-02-26
 */
public class TblOrder {
    /** 版本号 */
    private static final long serialVersionUID = -5645198258390100660L;

    /** id */
    private Integer id;

    /** orderid */
    private String orderid;

    /** addtime */
    private Timestamp addtime;

    /** userid */
    private Integer userid;

    /** province */
    private String province;

    /** city */
    private String city;

    /** county */
    private String county;

    /** address */
    private String address;

    /** name */
    private String name;

    /** tel */
    private String tel;

    /** zip */
    private String zip;

    /** status */
    private String status;

    /** goodsid */
    private Integer goodsid;

    /** price */
    private BigDecimal price;

    /** quantity */
    private Integer quantity;

    /** sumprice */
    private BigDecimal sumprice;

    public TblOrder() {
    }

    public TblOrder(String orderid, Integer userid, String province, String city, String county, String address, String name, String tel, String zip, String status, Integer goodsid, BigDecimal price, Integer quantity, BigDecimal sumprice) {
        this.orderid = orderid;
        this.userid = userid;
        this.province = province;
        this.city = city;
        this.county = county;
        this.address = address;
        this.name = name;
        this.tel = tel;
        this.zip = zip;
        this.status = status;
        this.goodsid = goodsid;
        this.price = price;
        this.quantity = quantity;
        this.sumprice = sumprice;
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
     * 获取orderid
     * 
     * @return orderid
     */
    public String getOrderid() {
        return this.orderid;
    }

    /**
     * 设置orderid
     * 
     * @param orderid
     */
    public void setOrderid(String orderid) {
        this.orderid = orderid;
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
     * 获取province
     * 
     * @return province
     */
    public String getProvince() {
        return this.province;
    }

    /**
     * 设置province
     * 
     * @param province
     */
    public void setProvince(String province) {
        this.province = province;
    }

    /**
     * 获取city
     * 
     * @return city
     */
    public String getCity() {
        return this.city;
    }

    /**
     * 设置city
     * 
     * @param city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * 获取county
     * 
     * @return county
     */
    public String getCounty() {
        return this.county;
    }

    /**
     * 设置county
     * 
     * @param county
     */
    public void setCounty(String county) {
        this.county = county;
    }

    /**
     * 获取address
     * 
     * @return address
     */
    public String getAddress() {
        return this.address;
    }

    /**
     * 设置address
     * 
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取name
     * 
     * @return name
     */
    public String getName() {
        return this.name;
    }

    /**
     * 设置name
     * 
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取tel
     * 
     * @return tel
     */
    public String getTel() {
        return this.tel;
    }

    /**
     * 设置tel
     * 
     * @param tel
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * 获取zip
     * 
     * @return zip
     */
    public String getZip() {
        return this.zip;
    }

    /**
     * 设置zip
     * 
     * @param zip
     */
    public void setZip(String zip) {
        this.zip = zip;
    }

    /**
     * 获取status
     * 
     * @return status
     */
    public String getStatus() {
        return this.status;
    }

    /**
     * 设置status
     * 
     * @param status
     */
    public void setStatus(String status) {
        this.status = status;
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
     * 获取price
     * 
     * @return price
     */
    public BigDecimal getPrice() {
        return this.price;
    }

    /**
     * 设置price
     * 
     * @param price
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
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

    /**
     * 获取sumprice
     * 
     * @return sumprice
     */
    public BigDecimal getSumprice() {
        return this.sumprice;
    }

    /**
     * 设置sumprice
     * 
     * @param sumprice
     */
    public void setSumprice(BigDecimal sumprice) {
        this.sumprice = sumprice;
    }
}