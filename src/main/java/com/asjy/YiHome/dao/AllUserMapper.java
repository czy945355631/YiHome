package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.AllUser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Repository
@Mapper
public interface AllUserMapper {
    int insertAllUser(AllUser user);
    List<AllUser> findAllUserByCondition (AllUser user);
    List<AllUser> findAllUserById(Integer userid);
    int updateAllUser(AllUser user);
}
