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
 * ALL_SPEC
 * 
 * @author czy
 * @version 1.0.0 2018-12-10
 */
public class AllSpec {

    /** 版本号 */
    private static final long serialVersionUID = 5881766332641848961L;

    /** id */
    private Integer id;

    /** addtime */
    private Timestamp addtime;

    /** deletestatus */
    private Integer deletestatus;

    /** specname */
    private String specname;

    /** seq */
    private Integer seq;

    private String specvname;

    private List<SpecValue> specValues;

    /** artno */
    private Integer artno;

    public Integer getArtno() {
        return artno;
    }

    public void setArtno(Integer artno) {
        this.artno = artno;
    }

    public String getSpecvname() {
        return specvname;
    }

    public void setSpecvname(String specvname) {
        this.specvname = specvname;
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
     * 获取specname
     * 
     * @return specname
     */
    public String getSpecname() {
        return this.specname;
    }

    /**
     * 设置specname
     * 
     * @param specname
     */
    public void setSpecname(String specname) {
        this.specname = specname;
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

    public List<SpecValue> getSpecValues() {
        return specValues;
    }

    public void setSpecValues(List<SpecValue> specValues) {
        this.specValues = specValues;
    }
}