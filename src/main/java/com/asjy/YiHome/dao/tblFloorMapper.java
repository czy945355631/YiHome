package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.TblFloor;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface tblFloorMapper {
    List<TblFloor> floorindexlist();
    int insertTblFloor(TblFloor tblFloor);
    int deleteTblFloorById(String id);
    List<TblFloor> getIndexFloor();
    List<TblFloor> floorById(String id);

}
