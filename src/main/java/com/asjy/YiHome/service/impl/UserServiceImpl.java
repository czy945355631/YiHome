package com.asjy.YiHome.service.impl;

import com.asjy.YiHome.Controller.FgController.Cart;
import com.asjy.YiHome.dao.AllUserMapper;
import com.asjy.YiHome.model.AllUser;
import com.asjy.YiHome.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Service()
public class UserServiceImpl implements UserService {
    @Autowired
    AllUserMapper userMapper;
    @Autowired
    Cart cart;
    @Override
    public boolean creatUser(AllUser user) {
        int a = 0;
        user.setUserPermission((long) a);
        int result = userMapper.insertAllUser(user);
        return result>0?true:false;
    }

    @Override
    public boolean loginCheck(AllUser user, HttpServletRequest request,HttpServletResponse response) {
        String pwd = user.getUserPasswd(); //(用户名+密码) 的md5值
        user.setUserPasswd(null);
        List<AllUser> result = userMapper.findAllUserByCondition(user);
        if (result.size() == 1){
            //用户名md5+密码md5
            String realPassword = result.get(0).getUserPasswd();
            if (pwd.equals(realPassword)){
                request.getSession().setAttribute("loginName", user.getUserUsername());
                request.getSession().setAttribute("userid",result.get(0).getId());
                request.getSession().setAttribute("permission",result.get(0).getUserPermission());
                //将cookie中购物车放置数据库中
                cart.cookieCartToDatabase(request);
                clearCookie(request,response,"goodscar");

                return true;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }

    @Override
    public AllUser findUserByUserid(Integer userid) {
        List<AllUser> allUserById = userMapper.findAllUserById(userid);
        return allUserById.get(0);
    }

    @Override
    public boolean updateUser(AllUser user) {
        int i = userMapper.updateAllUser(user);
        return i>0?true:false;
    }

    protected void clearCookie(HttpServletRequest request, HttpServletResponse response, String name) {
        Cookie cookie = new Cookie(name,null);
        cookie.setMaxAge(0);
        cookie.setPath("/");
        response.addCookie(cookie);
    }




}
