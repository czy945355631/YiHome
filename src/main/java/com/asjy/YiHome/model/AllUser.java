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
 * ALL_USER
 * 
 * @author czy
 * @version 1.0.0 2018-11-29
 */
public class AllUser {
    /** 版本号 */
    private static final long serialVersionUID = -1092100624604495383L;

    /** id */
    private Integer id;

    /** userAddtime */
    private Timestamp userAddtime;

    /** userUsername */
    private String userUsername;

    /** userPasswd */
    private String userPasswd;

    /** userTel */
    private String userTel;

    /** userEmail */
    private String userEmail;

    /** userRealname */
    private String userRealname;

    /** userSex */
    private Integer userSex;

    /** userPermission */
    private Long userPermission;

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
     * 获取userAddtime
     * 
     * @return userAddtime
     */
    public Timestamp getUserAddtime() {
        return this.userAddtime;
    }

    /**
     * 设置userAddtime
     * 
     * @param userAddtime
     */
    public void setUserAddtime(Timestamp userAddtime) {
        this.userAddtime = userAddtime;
    }

    /**
     * 获取userUsername
     * 
     * @return userUsername
     */
    public String getUserUsername() {
        return this.userUsername;
    }

    /**
     * 设置userUsername
     * 
     * @param userUsername
     */
    public void setUserUsername(String userUsername) {
        this.userUsername = userUsername;
    }

    /**
     * 获取userPasswd
     * 
     * @return userPasswd
     */
    public String getUserPasswd() {
        return this.userPasswd;
    }

    /**
     * 设置userPasswd
     * 
     * @param userPasswd
     */
    public void setUserPasswd(String userPasswd) {
        this.userPasswd = userPasswd;
    }

    /**
     * 获取userTel
     * 
     * @return userTel
     */
    public String getUserTel() {
        return this.userTel;
    }

    /**
     * 设置userTel
     * 
     * @param userTel
     */
    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    /**
     * 获取userEmail
     * 
     * @return userEmail
     */
    public String getUserEmail() {
        return this.userEmail;
    }

    /**
     * 设置userEmail
     * 
     * @param userEmail
     */
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    /**
     * 获取userRealname
     * 
     * @return userRealname
     */
    public String getUserRealname() {
        return this.userRealname;
    }

    /**
     * 设置userRealname
     * 
     * @param userRealname
     */
    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname;
    }

    /**
     * 获取userSex
     * 
     * @return userSex
     */
    public Integer getUserSex() {
        return this.userSex;
    }

    /**
     * 设置userSex
     * 
     * @param userSex
     */
    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    /**
     * 获取userPermission
     * 
     * @return userPermission
     */
    public Long getUserPermission() {
        return this.userPermission;
    }

    /**
     * 设置userPermission
     * 
     * @param userPermission
     */
    public void setUserPermission(Long userPermission) {
        this.userPermission = userPermission;
    }
}