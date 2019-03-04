package com.asjy.YiHome.Config;

import com.asjy.YiHome.Interceptor.BsPageCheckLoginInterceptor;
import com.asjy.YiHome.Interceptor.FgPageCheckLoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class LoginConfiguration implements WebMvcConfigurer {
//    @Autowired
//    CartInterceptor cartInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册前台拦截器
        FgPageCheckLoginInterceptor fgPageCheckLoginInterceptor = new FgPageCheckLoginInterceptor();
        InterceptorRegistration fgPageloginRegistry = registry.addInterceptor(fgPageCheckLoginInterceptor);
        //前台页面拦截器，拦截所有前台访问，如果登录后的权限为1 则跳转到后台。
        BsPageCheckLoginInterceptor bsPageCheckLoginInterceptor = new BsPageCheckLoginInterceptor();
        InterceptorRegistration interceptorRegistration = registry.addInterceptor(bsPageCheckLoginInterceptor);
        interceptorRegistration.addPathPatterns("/BsPage/**");
        // 拦截路径
        fgPageloginRegistry.addPathPatterns("/Cart/cartpage");
        fgPageloginRegistry.addPathPatterns("/Account/my-account");
        fgPageloginRegistry.addPathPatterns("/CheckOut/**");
        // 排除路径
        fgPageloginRegistry.excludePathPatterns("/FgPage/**");
        fgPageloginRegistry.excludePathPatterns("/Products");
        fgPageloginRegistry.excludePathPatterns("/FgPage/goIndex");
        fgPageloginRegistry.excludePathPatterns("/Account/Login");
        fgPageloginRegistry.excludePathPatterns("/Account/Register");
        fgPageloginRegistry.excludePathPatterns("/Account/loginout");
        fgPageloginRegistry.excludePathPatterns("/BsPage/**");
        fgPageloginRegistry.excludePathPatterns("/Products/AddCookieCar");
//        fgPageloginRegistry.excludePathPatterns("/Cart/**");
        fgPageloginRegistry.excludePathPatterns("/Cart/getCartSummary");
        fgPageloginRegistry.excludePathPatterns("/Cart/AddGoodsCart");
        fgPageloginRegistry.excludePathPatterns("/Cart/decGoodsCart");
        fgPageloginRegistry.excludePathPatterns("/Cart/getGoodsCar");
        fgPageloginRegistry.excludePathPatterns("/Bsjson/**");
        fgPageloginRegistry.excludePathPatterns("/BsOrder/**");
        // 排除资源请求
        fgPageloginRegistry.excludePathPatterns("/YiHome/assets/**");
        fgPageloginRegistry.excludePathPatterns("/YiHomeManagerSystem/assets/**");
        fgPageloginRegistry.excludePathPatterns("/**/**.png");
        fgPageloginRegistry.excludePathPatterns("/**/**.jpg");
        //后台页面拦截器，拦截所有后台访问，如果权限为0，则跳转到前台
        //前台页面拦截器，拦截所有前台访问，如果登录后的权限为1 则跳转到后台。



    }
}
