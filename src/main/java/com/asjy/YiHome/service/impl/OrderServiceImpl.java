package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.dao.tblOrderMapper;
import com.asjy.YiHome.model.Ordermodel;
import com.asjy.YiHome.model.TblOrder;
import com.asjy.YiHome.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    tblOrderMapper tblOrderMapper;
    @Override
    public boolean insertOrder(TblOrder order) {
        boolean b = tblOrderMapper.insertTblOrder(order);
        return b;
    }

    @Override
    public List<Ordermodel> findOrderAll() {
        List<TblOrder> tblOrderAll = tblOrderMapper.findTblOrderAll();
        //订单去重获取概要
        for  ( int  i  =   0 ; i  <  tblOrderAll.size()  -   1 ; i ++ )  {
            for  ( int  j  =  tblOrderAll.size()  -   1 ; j  >  i; j -- )  {
                if  (tblOrderAll.get(j).getOrderid().equals(tblOrderAll.get(i).getOrderid()))  {
                    tblOrderAll.remove(j);
                }
            }
        }
        List<Ordermodel> ordermodels = new ArrayList<>();
        //订单列表
        for (int i = 0; i < tblOrderAll.size(); i++) {
            //循环订单概要
            String orderid = tblOrderAll.get(i).getOrderid();
            BigDecimal sum = new BigDecimal(0);
            //定义总价
            List<TblOrder> tblOrderByOrderId = tblOrderMapper.findTblOrderByOrderId(orderid);
            TblOrder order = tblOrderByOrderId.get(0);
            for (TblOrder tblOrder : tblOrderByOrderId) {
                sum =sum.add(tblOrder.getSumprice());
            }
            String address = order.getProvince()+order.getCity()+order.getCounty()+order.getAddress();
            Ordermodel ordermodel = new Ordermodel(order.getOrderid(),tblOrderByOrderId,-1,order.getAddtime(),sum,address,order.getTel(),order.getName(),order.getStatus());
            ordermodels.add(ordermodel);
        }

        return ordermodels;
    }
    @Override
    public List<Map<String, Object>> Sumprice(){

        return tblOrderMapper.findSumprice();
    }
}
