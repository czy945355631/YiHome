package com.asjy.YiHome.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

public class Ordermodel {
    private String orderid;
    private List<TblOrder> orderslist;
    private int userid;
    private Timestamp addtime;
    private BigDecimal price;
    private String address;
    private String tel;
    private String name;
    private String status;

    public Ordermodel(String orderid, List<TblOrder> orderslist, int userid, Timestamp addtime, BigDecimal price, String address, String tel, String name, String status) {
        this.orderid = orderid;
        this.orderslist = orderslist;
        this.userid = userid;
        this.addtime = addtime;
        this.price = price;
        this.address = address;
        this.tel = tel;
        this.name = name;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public List<TblOrder> getOrderslist() {
        return orderslist;
    }

    public void setOrderslist(List<TblOrder> orderslist) {
        this.orderslist = orderslist;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public Timestamp getAddtime() {
        return addtime;
    }

    public void setAddtime(Timestamp addtime) {
        this.addtime = addtime;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
}
