package com.asjy.YiHome.service;

import com.asjy.YiHome.model.Ordermodel;
import com.asjy.YiHome.model.TblOrder;

import java.util.List;
import java.util.Map;

public interface OrderService {
    boolean insertOrder(TblOrder order);
    List<Ordermodel> findOrderAll();
    List<Map<String, Object>> Sumprice();
}
