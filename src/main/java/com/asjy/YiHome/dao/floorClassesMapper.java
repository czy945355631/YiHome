package com.asjy.YiHome.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface floorClassesMapper {
    int insertFloorClasses(@Param("floorid") Integer floorid, @Param("classesid") Integer classesid);
}
