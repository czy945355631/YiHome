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

import org.springframework.stereotype.Service;

import java.sql.Timestamp;

/**
 * ALL_BRANDS
 * 
 * @author czy
 * @version 1.0.0 2018-12-05
 */

public class AllBrands {
    /** 版本号 */
    private static final long serialVersionUID = -8604426743881981637L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** deletestatus */
    private Integer deletestatus;

    /** brandname */
    private String brandname;

    /** path */
    private String path;

    /** seq */
    private Integer seq;

    /** recommend */
    private Integer recommend;

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
     * 获取brandname
     * 
     * @return brandname
     */
    public String getBrandname() {
        return this.brandname;
    }

    /**
     * 设置brandname
     * 
     * @param brandname
     */
    public void setBrandname(String brandname) {
        this.brandname = brandname;
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
     * 获取recommend
     * 
     * @return recommend
     */
    public Integer getRecommend() {
        return this.recommend;
    }

    /**
     * 设置recommend
     * 
     * @param recommend
     */
    public void setRecommend(Integer recommend) {
        this.recommend = recommend;
    }
}