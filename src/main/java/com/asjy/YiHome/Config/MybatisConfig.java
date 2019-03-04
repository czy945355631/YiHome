package com.asjy.YiHome.Config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.github.pagehelper.PageHelper;
/**
 * 分页插件配置
 * @author Administrator
 *
 */
@Configuration
public class MybatisConfig {
	@Bean
	public PageHelper pageHelper () {
		System.out.println("...pageHelper...");
		PageHelper pageHelper=new PageHelper();
		Properties p=new Properties();
		p.setProperty("offsetAsPageNum", "true");
		p.setProperty("rowBoundsWithoutCount", "true");
		p.setProperty("reasonable", "true");
		pageHelper.setProperties(p);
		return pageHelper;
	}
}
 