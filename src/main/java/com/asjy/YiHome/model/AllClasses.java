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
import java.util.List;

/**
 * ALL_CLASSES
 * 
 * @author czy
 * @version 1.0.0 2018-11-30
 */
public class AllClasses {
    /** 版本号 */
    private static final long serialVersionUID = -6370974864829259263L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** classesname */
    private String classesname;

    /** pid */
    private Integer pid;

    /** seq */
    private Integer seq;

    /** display */
    private Integer display;

    /** level */
    private Integer level;

    private String goodsIdList;

    public String getGoodsIdList() {
        return goodsIdList;
    }

    public void setGoodsIdList(String goodsIdList) {
        this.goodsIdList = goodsIdList;
    }

    private List<TblGoods> goods;

    public List<TblGoods> getGoods() {
        return goods;
    }

    public void setGoods(List<TblGoods> goods) {
        this.goods = goods;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    private String path;

    private List<AllClasses> sonClasses;

    public List<AllClasses> getSonClasses() {
        return sonClasses;
    }

    public void setSonClasses(List<AllClasses> sonClasses) {
        this.sonClasses = sonClasses;
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

    public String getClassesname() {
        return this.classesname;
    }

    /**
     * 设置classesname
     * 
     * @param classesname
     */
    public void setClassesname(String classesname) {
        this.classesname = classesname;
    }

    /**
     * 获取pid
     * 
     * @return pid
     */
    public Integer getPid() {
        return this.pid;
    }

    /**
     * 设置pid
     * 
     * @param pid
     */
    public void setPid(Integer pid) {
        this.pid = pid;
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
     * 获取display
     * 
     * @return display
     */
    public Integer getDisplay() {
        return this.display;
    }

    /**
     * 设置display
     * 
     * @param display
     */
    public void setDisplay(Integer display) {
        this.display = display;
    }

    /**
     * 获取level
     * 
     * @return level
     */
    public Integer getLevel() {
        return this.level;
    }

    /**
     * 设置level
     * 
     * @param level
     */
    public void setLevel(Integer level) {
        this.level = level;
    }
}