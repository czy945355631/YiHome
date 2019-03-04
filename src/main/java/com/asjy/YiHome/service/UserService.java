package com.asjy.YiHome.service;

import com.asjy.YiHome.model.AllUser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public interface UserService {
    boolean creatUser(AllUser user);
    boolean loginCheck(AllUser user, HttpServletRequest request, HttpServletResponse response);
    AllUser findUserByUserid(Integer userid);
    boolean updateUser(AllUser user);
}
