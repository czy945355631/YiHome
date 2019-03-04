package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.TblOrder;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
@Mapper
public interface tblOrderMapper {
    boolean insertTblOrder(TblOrder order);
    List<TblOrder> findTblOrderByUserId(int userid);
    List<TblOrder> findTblOrderByOrderId(String orderid);
    List<TblOrder> findTblOrderAll();
    boolean deleteTblOrderByOrderId(String orderid);
    boolean updateTblOrder(TblOrder order);
    List<Map<String, Object>> findSumprice();

}
