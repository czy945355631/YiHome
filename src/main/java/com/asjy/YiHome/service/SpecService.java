package com.asjy.YiHome.service;

import com.asjy.YiHome.model.AllSpec;
import com.asjy.YiHome.model.GoodsSpec;

import java.util.List;

public interface SpecService {
    List<AllSpec> getSpecAll();
    int addSpec(AllSpec spec);
    int doSpecUpdate(AllSpec spec);
    int delete(Integer id);
    AllSpec findSpecById (String id);
    List<GoodsSpec> findGoodsSpecBySpecidSpecvidArtno(GoodsSpec goodsSpec);

}
