package com.asjy.YiHome.Controller.FgController;

import com.alibaba.fastjson.JSON;
import com.asjy.YiHome.dao.tblAddressMapper;
import com.asjy.YiHome.dao.tblOrderMapper;
import com.asjy.YiHome.model.AllUser;
import com.asjy.YiHome.model.Ordermodel;
import com.asjy.YiHome.model.TblAddress;
import com.asjy.YiHome.model.TblOrder;
import com.asjy.YiHome.service.impl.ClassesServiceImpl;
import com.asjy.YiHome.service.impl.UserServiceImpl;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/Account")
@Controller
public class Account {
    @Autowired
    ClassesServiceImpl classesService;
    @Autowired
    tblAddressMapper tblAddressMapper;
    @Autowired
    tblOrderMapper tblOrderMapper;
    @Autowired
    UserServiceImpl userService;

    @RequestMapping("/Login")
    public String Login(Model model){
        model.addAttribute("classes",classesService.AllClasses());
        return "YiHome/login";
    };
    @RequestMapping("/Register")
    public String Register(Model model){
        model.addAttribute("classes",classesService.AllClasses());
        return "YiHome/register";
    };

//    @ResponseBody
//    @RequestMapping(value = "/LoginStatusCheck",method = RequestMethod.POST)
//    public boolean LoginStatusCheck(HttpServletRequest request){
//        Object loginName = request.getSession().getAttribute("loginName");
//        if (null == loginName || !(loginName instanceof String)) {
//            // 未登录，重定向到登录页
////            response.sendRedirect("/Account/Login");
//            return false;
//        }
//        return true;
//    }
    //注销登录
    @RequestMapping("/loginout")
    public String loginOut(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:/FgPage/goIndex";
    }
    @RequestMapping("/my-account")
    public String myaccount(HttpServletRequest request,Model model) {
        model.addAttribute("classes",classesService.AllClasses());
        if (request.getSession().getAttribute("userid") != null){

            Integer userid = (Integer)request.getSession().getAttribute("userid");
            List<TblOrder> tblOrderByUserId = tblOrderMapper.findTblOrderByUserId(userid);
//            System.out.println(tblOrderByUserId.size());
            for  ( int  i  =   0 ; i  <  tblOrderByUserId.size()  -   1 ; i ++ )  {
                for  ( int  j  =  tblOrderByUserId.size()  -   1 ; j  >  i; j -- )  {
                    if  (tblOrderByUserId.get(j).getOrderid().equals(tblOrderByUserId.get(i).getOrderid()))  {
                        tblOrderByUserId.remove(j);
                    }
                }
            }
            List<Ordermodel> ordermodels = new ArrayList<>();
            //订单列表
            for (int i = 0; i < tblOrderByUserId.size(); i++) {
                //循环订单概要
                String orderid = tblOrderByUserId.get(i).getOrderid();
                BigDecimal sum = new BigDecimal(0);
                //定义总价
                List<TblOrder> tblOrderByOrderId = tblOrderMapper.findTblOrderByOrderId(orderid);
                TblOrder order = tblOrderByOrderId.get(0);
                for (TblOrder tblOrder : tblOrderByOrderId) {
                    sum =sum.add(tblOrder.getSumprice());
                }
                String address = order.getProvince()+order.getCity()+order.getCounty()+order.getAddress();
                Ordermodel ordermodel = new Ordermodel(order.getOrderid(),tblOrderByOrderId,userid,order.getAddtime(),sum,address,order.getTel(),order.getName(),order.getStatus());
                ordermodels.add(ordermodel);
            }
            model.addAttribute("orderlist",ordermodels);
            AllUser userByUserid = userService.findUserByUserid(userid);
            model.addAttribute("user",userByUserid);
        }
        return "YiHome/my-account";
    }
    //添加收获地址
    @ResponseBody
    @RequestMapping(value = "addAddress",method = RequestMethod.POST)
    public String addAddress(HttpServletRequest request, TblAddress address){
        int userid = (Integer)request.getSession().getAttribute("userid");
        address.setUserid(userid);
        Integer defaultstatus = address.getDefaultstatus();
        //判断是否为默认地址
        //如果是，将其他地址的默认值去掉
        //如果不是，判断时候有其他地址，如果没有则设成默认值

        List<TblAddress> tblAddressByuserid = tblAddressMapper.findTblAddressByuserid(userid);
        System.out.println(defaultstatus);

        if (defaultstatus == null ||defaultstatus != 1 ){
            //不是
            if (tblAddressByuserid.size()==0){
                address.setDefaultstatus(1);
            }else {
                address.setDefaultstatus(0);
            }
        }else {
            //清除其他地址默认值
            if (tblAddressByuserid.size() != 0 || tblAddressByuserid != null){
                for (TblAddress tblAddress : tblAddressByuserid) {
                    tblAddress.setDefaultstatus(0);
                    tblAddressMapper.updateTblAddress(tblAddress);
                }
            }
        }
        String s = JSON.toJSONString(address);
        System.out.println(s);
        tblAddressMapper.insertTblAddress(address);
        return "ok";
    }
    @ResponseBody
    @RequestMapping(value = "findAddress",method = RequestMethod.POST)
    public String findAddress(HttpServletRequest request){
        int userid = (Integer)request.getSession().getAttribute("userid");
        List<TblAddress> tblAddressByuserid = tblAddressMapper.findTblAddressByuserid(userid);
        return JSON.toJSONString(tblAddressByuserid);
    }
    //更改用户信息功能
    @PostMapping(value = "changeAccount")
    public String changeAccount(HttpServletRequest request,AllUser user){
        Integer userid = (Integer)request.getSession().getAttribute("userid");
        AllUser userByUserid = userService.findUserByUserid(userid);
        userByUserid.setUserRealname(user.getUserRealname());
        userByUserid.setUserUsername(user.getUserUsername());
        userByUserid.setUserTel(user.getUserTel());
        userByUserid.setUserEmail(user.getUserEmail());
        boolean b = userService.updateUser(userByUserid);
        return "redirect:/Account/my-account";
    }
    @PostMapping(value = "changePasswd")
    public String changePasswd(HttpServletRequest request){

        return null;
    }


    @ResponseBody
    @PostMapping(value = "getAddress")
    public String getAddress(int id){
        List<TblAddress> tblAddressByIds = tblAddressMapper.findTblAddressByIds(id);
        TblAddress tblAddress = tblAddressByIds.get(0);
//        System.out.println("地址id为"+id);
        String s = JSON.toJSONString(tblAddress);
        return s;
    }

    //更改密码功能


    //更改地址
    @ResponseBody
    @RequestMapping(value = "updateAddress",method = RequestMethod.POST)
    public String updateAddress(HttpServletRequest request, TblAddress address){
        int userid = (Integer)request.getSession().getAttribute("userid");
        address.setUserid(userid);
        Integer defaultstatus = address.getDefaultstatus();
        //判断是否为默认地址
        //如果是，将其他地址的默认值去掉
        //如果不是，判断时候有其他地址，如果没有则设成默认值

        List<TblAddress> tblAddressByuserid = tblAddressMapper.findTblAddressByuserid(userid);
//        System.out.println(defaultstatus);

        if (defaultstatus == null ||defaultstatus != 1 ){
            //不是
            if (tblAddressByuserid.size()==0){
                address.setDefaultstatus(1);
            }else {
                address.setDefaultstatus(0);
            }
        }else {
            //清除其他地址默认值
            if (tblAddressByuserid.size() != 0 || tblAddressByuserid != null){
                for (TblAddress tblAddress : tblAddressByuserid) {
                    tblAddress.setDefaultstatus(0);
                    tblAddressMapper.updateTblAddress(tblAddress);
                }
            }
        }
        String s = JSON.toJSONString(address);
        System.out.println(s);
        tblAddressMapper.updateTblAddress(address);
        return "ok";
    }



}
