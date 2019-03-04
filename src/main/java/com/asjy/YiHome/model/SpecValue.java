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
 * SPEC_VALUE
 * 
 * @author czy
 * @version 1.0.0 2018-12-13
 */
public class SpecValue {
    /** 版本号 */
    private static final long serialVersionUID = -3921053917474682053L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** deletestatus */
    private Integer deletestatus;

    /** specvname */
    private String specvname;

    /** seq */
    private Integer seq;

    /** specid */
    private Integer specid;

    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
     * 获取deletestatus
     * 
     * @return deletestatus
     */
    public Integer getDeletestatus() {
        return this.deletestatus;
    }

    /**
     * 设置deletestatus
     * 
     * @param deletestatus
     */
    public void setDeletestatus(Integer deletestatus) {
        this.deletestatus = deletestatus;
    }

    /**
     * 获取specvname
     * 
     * @return specvname
     */
    public String getSpecvname() {
        return this.specvname;
    }

    /**
     * 设置specvname
     * 
     * @param specvname
     */
    public void setSpecvname(String specvname) {
        this.specvname = specvname;
    }

    /**
     * 获取seq
     * 
     * @return seq
     */
    public Integer getSeq() {
        return this.seq;
    }

    /**
     * 设置seq
     * 
     * @param seq
     */
    public void setSeq(Integer seq) {
        this.seq = seq;
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
}