package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.SpecValue;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface SpecValueMapper {
    int insertSpecValue(SpecValue specValue);
    //根据规格id软删除
    int deleteSpecValueBySpecId(Integer id);
    //根据id软删除
    int deleteSpecValueById (Integer id);

    int updateSpecValue(SpecValue specValue);

    List<SpecValue> findSpecvBySpecidAndArtno(Integer specid, Integer artno);
}
