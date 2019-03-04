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
 * TBL_FLOOR
 * 
 * @author czy
 * @version 1.0.0 2019-01-10
 */
public class TblFloor {
    /** 版本号 */
    private static final long serialVersionUID = 4387161724887922833L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** floorname */
    private String floorname;

    /** seq */
    private Integer seq;

    /** display */
    private Integer display;

    private List<AllClasses> classesList;
    private List<TblGoods> goodsList;

    public List<TblGoods> getGoodsList() {
        return goodsList;
    }

    public void setGoodsList(List<TblGoods> goodsList) {
        this.goodsList = goodsList;
    }

    public List<AllClasses> getClassesList() {

        return classesList;
    }

    public void setClassesList(List<AllClasses> classesList) {
        this.classesList = classesList;
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
     * 获取floorname
     * 
     * @return floorname
     */
    public String getFloorname() {
        return this.floorname;
    }

    /**
     * 设置floorname
     * 
     * @param floorname
     */
    public void setFloorname(String floorname) {
        this.floorname = floorname;
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
}