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

import java.sql.Timestamp;

/**
 * TBL_ADDRESS
 * 
 * @author czy
 * @version 1.0.0 2019-02-24
 */
public class TblAddress {
    /** 版本号 */
    private static final long serialVersionUID = 3540623567010244358L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** userid */
    private Integer userid;

    /** provinces */
    private String provinces;

    /** city */
    private String city;

    /** county */
    private String county;

    /** address */
    private String address;

    /** zip */
    private String zip;

    /** defaultstatus */
    private Integer defaultstatus;

    /** name */
    private String name;

    /** tel */
    private String tel;

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
     * 获取provinces
     * 
     * @return provinces
     */
    public String getProvinces() {
        return this.provinces;
    }

    /**
     * 设置provinces
     * 
     * @param provinces
     */
    public void setProvinces(String provinces) {
        this.provinces = provinces;
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
     * 获取defaultstatus
     * 
     * @return defaultstatus
     */
    public Integer getDefaultstatus() {
        return this.defaultstatus;
    }

    /**
     * 设置defaultstatus
     * 
     * @param defaultstatus
     */
    public void setDefaultstatus(Integer defaultstatus) {
        this.defaultstatus = defaultstatus;
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
    public String  getTel() {
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
}