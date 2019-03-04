package com.asjy.YiHome.dao;

import com.asjy.YiHome.model.TblAddress;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface tblAddressMapper {
    boolean insertTblAddress(TblAddress address);
    List<TblAddress> findTblAddressByuserid(int userid);
    boolean updateTblAddress(TblAddress address);
    List<TblAddress> findTblAddressByIds(int id);
}
