package com.asjy.YiHome.Controller.FgController;

import com.alibaba.fastjson.JSON;
import com.asjy.YiHome.dao.tblAddressMapper;
import com.asjy.YiHome.model.GoodsCar;
import com.asjy.YiHome.model.TblAddress;
import com.asjy.YiHome.model.TblGoods;
import com.asjy.YiHome.model.TblOrder;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.GoodsCarServiceImpl;
import com.asjy.YiHome.service.impl.GoodsServiceImpl;
import com.asjy.YiHome.service.impl.OrderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RequestMapping("/CheckOut")
@Controller
public class CheckOut {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    GoodsCarServiceImpl goodsCarService;
    @Autowired
    tblAddressMapper tblAddressMapper;
    @Autowired
    OrderServiceImpl orderService;
    @Autowired
    GoodsServiceImpl goodsService;
    @RequestMapping("/showorder")
    public String showOrder(String arr, Model model){
        model.addAttribute("classes",classesService.AllClasses());
        String[] newarr = arr.split(",");
        List<GoodsCar> goodsCarList = new ArrayList<>();

        for (int i = 0; i < newarr.length; i++) {
            if(newarr[i] == null || newarr[i].isEmpty()){
                continue;
            }
            GoodsCar goodsCarId = goodsCarService.findGoodsCarId(newarr[i]);
            goodsCarList.add(goodsCarId);
        }

        model.addAttribute("goodsCarList",goodsCarList);
        return "YiHome/checkout";
    }
    @RequestMapping("/addOrder")
    public String addOrder(HttpServletRequest request,String goodsCarList, String address){
        String[] newgoodsCarList = goodsCarList.split(",");
        List<GoodsCar> CarList = new ArrayList<>();

        int userid = (Integer)request.getSession().getAttribute("userid");
        String orderIdByUUId = getOrderIdByUUId();
        //获得地址
         TblAddress tblAddress = tblAddressMapper.findTblAddressByIds(Integer.parseInt(address)).get(0);

        for (int i = 0; i < newgoodsCarList.length; i++) {
            //获得购物车列表
            if(newgoodsCarList[i] == null || newgoodsCarList[i].isEmpty()){
                continue;
            }
            GoodsCar goodsCarId = goodsCarService.findGoodsCarId(newgoodsCarList[i]);
            //获取购物车
            Integer goodsid = goodsCarId.getGoodsid();
            TblGoods goodsById = goodsService.findGoodsById(goodsid);
            //获取购物车中的商品

            TblOrder order = new TblOrder(orderIdByUUId,userid,tblAddress.getProvinces(),tblAddress.getCity(),tblAddress.getCounty(),tblAddress.getAddress(),tblAddress.getName(),tblAddress.getTel(),tblAddress.getZip(),"已支付",goodsCarId.getGoodsid(),goodsCarId.getGoods().getNowPrice(),goodsCarId.getQuantity(),goodsCarId.sumprice());
            orderService.insertOrder(order);
            //创建订单

            goodsCarService.deleteGoodsCar(userid,goodsCarId.getGoodsid());
            //删除购物车
            goodsById.setStore(goodsById.getStore()-goodsCarId.getQuantity());
            goodsById.setSales(goodsById.getSales()+goodsCarId.getQuantity());
            if (goodsById.getStore()<=0){
                //如果库存小于0则下架
//                goodsById.setShowstatus(1);
            }
            goodsService.updateGoods(goodsById);
            //减少库存
        }
        //获取用户id
        //将购物车+地址+订单号落地到订单，更改状态
        //减少库存

        //删除用户购物车
        //若大于库存则取消
        return "redirect:/FgPage/goIndex";
    }
    public static String getOrderIdByUUId() {
        int machineId = 1;//最大支持1-9个集群机器部署
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//有可能是负数
            hashCodeV = - hashCodeV;
        }
        // 0 代表前面补充0
        // 4 代表长度为4
        // d 代表参数为正数型
        return machineId + String.format("%015d", hashCodeV);
    }


    //购买后更改库存方法
    //参数 goodsid shuliang
}
