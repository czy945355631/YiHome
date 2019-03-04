package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.dao.AllSpecMapper;
import com.asjy.YiHome.dao.GoodsSpecMapper;
import com.asjy.YiHome.dao.SpecValueMapper;
import com.asjy.YiHome.model.AllSpec;
import com.asjy.YiHome.model.GoodsSpec;
import com.asjy.YiHome.model.SpecValue;
import com.asjy.YiHome.service.SpecService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpecServiceImpl implements SpecService {
    @Autowired
    AllSpecMapper specMapper;
    @Autowired
    SpecValueMapper specValueMapper;
    @Autowired
    GoodsSpecMapper goodsSpecMapper;
    @Override
    public List<AllSpec> getSpecAll() {
        List<AllSpec> allSpecAll = specMapper.findAllSpecAll();
        return allSpecAll;
    }

    @Override
    public int addSpec(AllSpec spec) {
        System.out.println(spec.getSpecValues().size());

//        spec.setDeletestatus(1);
        int i = specMapper.insertSpec(spec);
        Integer id = spec.getId();
        for (int i1 = 0; i1 < spec.getSpecValues().size(); i1++) {
            SpecValue specValue = spec.getSpecValues().get(i1);
            specValue.setSpecid(id);
            specValueMapper.insertSpecValue(specValue);
        }

        return i;
    }

    @Override
    public int doSpecUpdate(AllSpec spec) {
        //修改规格
        specMapper.updateSpec(spec);

        Integer id = spec.getId();

        for (int i = 0; i < spec.getSpecValues().size(); i++) {
            SpecValue specValue = spec.getSpecValues().get(i);
            specValue.setSpecid(id);
//            System.out.println(specValue.getStatus());
            if ("delete".equals(specValue.getStatus())){
                specValueMapper.deleteSpecValueById(specValue.getId());
            }else if ("update".equals(specValue.getStatus())){
                specValueMapper.updateSpecValue(specValue);
            }else if ("new".equals(specValue.getStatus())){
                specValueMapper.insertSpecValue(specValue);
            }
        }

        return 0;
    }

    @Override
    public int delete(Integer id) {
        specMapper.deleteAllSpecById(id);
        specValueMapper.deleteSpecValueBySpecId(id);
        return 0;
    }

    @Override
    public AllSpec findSpecById(String id) {
        AllSpec spec = specMapper.findSpecById(id);
        return spec;
    }

    @Override
    public List<GoodsSpec> findGoodsSpecBySpecidSpecvidArtno(GoodsSpec goodsSpec) {
        List<GoodsSpec> goodsSpecBySpecidSpecvidArtno = goodsSpecMapper.findGoodsSpecByCondition(goodsSpec);
        return goodsSpecBySpecidSpecvidArtno;
    }

}
