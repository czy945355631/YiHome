package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.AllSpec;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface AllSpecMapper {
    List<AllSpec> findAllSpecAll ();
    int insertSpec(AllSpec spec);
    int deleteAllSpecById(Integer id);
    AllSpec findSpecById(String id);
    int updateSpec(AllSpec spec);
}
