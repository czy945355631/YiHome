package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.dao.floorClassesMapper;
import com.asjy.YiHome.dao.floorGoodsMapper;
import com.asjy.YiHome.dao.tblFloorMapper;
import com.asjy.YiHome.model.FloorClasses;
import com.asjy.YiHome.model.TblFloor;
import com.asjy.YiHome.service.FloorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FloorServiceImpl implements FloorService {
    @Autowired
    tblFloorMapper floorMapper;

    @Autowired
    floorClassesMapper floorClassesMapper;

    @Autowired
    floorGoodsMapper floorGoodsMapper;

    @Override
    public List<TblFloor> getFloorIndexData() {
        List<TblFloor> floorindexlist = floorMapper.floorindexlist();
        return floorindexlist;
    }

    @Override
    public int insertFloor(TblFloor tblFloor) {
        //添加数据到floor表
        int a = floorMapper.insertTblFloor(tblFloor);
        a = tblFloor.getId();
        //添加数据到分类-楼层
        for (int i = 0; i < tblFloor.getClassesList().size(); i++) {
            floorClassesMapper.insertFloorClasses(a,tblFloor.getClassesList().get(i).getId());
            if (tblFloor.getClassesList().get(i).getGoodsIdList() != null){
                String[] split = tblFloor.getClassesList().get(i).getGoodsIdList().split(",");
                //添加数据到商品-楼层
                for (int i1 = 0; i1 < split.length; i1++) {
                    floorGoodsMapper.insertFloorGoods(a,Integer.parseInt(split[i1]));
                }
            }
        }
        return 0;
    }

    @Override
    public int deleteGoods(String id) {
        floorMapper.deleteTblFloorById(id);
        return 0;
    }

    @Override
    public List<TblFloor> getFloorIndex() {
        List<TblFloor> indexFloor = floorMapper.getIndexFloor();
        return indexFloor;
    }

    @Override
    public TblFloor getFloorById(String id) {
        List<TblFloor> tblFloors = floorMapper.floorById(id);
        return tblFloors.get(0);
    }

    @Override
    public boolean updateFloor(TblFloor tblFloor) {
        Integer id = tblFloor.getId();
        int c = floorMapper.deleteTblFloorById(id.toString());

        int a = floorMapper.insertTblFloor(tblFloor);
        a = tblFloor.getId();
        //添加数据到分类-楼层
        for (int i = 0; i < tblFloor.getClassesList().size(); i++) {
            floorClassesMapper.insertFloorClasses(a,tblFloor.getClassesList().get(i).getId());
            if (tblFloor.getClassesList().get(i).getGoodsIdList() != null){
                String[] split = tblFloor.getClassesList().get(i).getGoodsIdList().split(",");
                //添加数据到商品-楼层
                for (int i1 = 0; i1 < split.length; i1++) {
                    floorGoodsMapper.insertFloorGoods(a,Integer.parseInt(split[i1]));
                }
            }
        }
        return false;
    }

}
