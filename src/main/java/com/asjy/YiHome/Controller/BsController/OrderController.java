package com.asjy.YiHome.Controller.BsController;

import com.asjy.YiHome.dao.tblOrderMapper;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.model.TblOrder;
import com.asjy.YiHome.service.impl.GoodsServiceImpl;
import com.asjy.YiHome.service.impl.OrderServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RequestMapping("/BsOrder")
@Controller
public class OrderController {
    @Autowired
    com.asjy.YiHome.dao.tblOrderMapper tblOrderMapper;
    @Autowired
    GoodsServiceImpl goodsService;

    @ResponseBody
    @RequestMapping(value = "deleteOrder",method = RequestMethod.POST)
    public boolean deleteOrder(@RequestBody Map<String,String> obj){
        String orderid = obj.get("orderid");
//        System.out.println(orderid);
        List<TblOrder> tblOrderByOrderId = tblOrderMapper.findTblOrderByOrderId(orderid);
        //遍历订单
        //还库存
        for (TblOrder order : tblOrderByOrderId) {
            Integer quantity = order.getQuantity();
            Integer goodsid = order.getGoodsid();
            TblGoods goodsById = goodsService.findGoodsById(goodsid);
            goodsById.setStore(goodsById.getStore()+quantity);
            goodsById.setSales(goodsById.getSales()-quantity);
            goodsService.updateGoods(goodsById);
        }
        //删除订单
        boolean b = tblOrderMapper.deleteTblOrderByOrderId(orderid);
        return b;
    }

    @ResponseBody
    @RequestMapping(value = "sendOrder",method = RequestMethod.POST)
    public boolean sendOrder(@RequestBody Map<String,String> obj){
        String orderid = obj.get("orderid");
        List<TblOrder> tblOrderByOrderId = tblOrderMapper.findTblOrderByOrderId(orderid);
        for (TblOrder order : tblOrderByOrderId) {
            order.setStatus("已发货");
            boolean b = tblOrderMapper.updateTblOrder(order);
        }
        return true;
    }

}
