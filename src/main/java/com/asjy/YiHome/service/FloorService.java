package com.asjy.YiHome.service;

import com.asjy.YiHome.model.TblFloor;

import java.util.List;

public interface FloorService {
    List<TblFloor> getFloorIndexData();
    int insertFloor(TblFloor tblFloor);
    int deleteGoods(String id);
    List<TblFloor> getFloorIndex();
    TblFloor getFloorById(String id);
    boolean updateFloor(TblFloor tblFloor);
}
