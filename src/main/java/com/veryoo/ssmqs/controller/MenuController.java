package com.veryoo.ssmqs.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.veryoo.ssmqs.entity.Menu;
import com.veryoo.ssmqs.service.IMenuService;
import com.veryoo.ssmqs.utils.JacksonUtil;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author oubijie
 * @since 2019-07-22
 */
@RestController
public class MenuController {
	
	@Autowired
	IMenuService menuService;

	@ResponseBody
	@RequestMapping(value="/sidemenu", produces = {"application/json;charset=UTF-8"})
	public List<Menu> index(){
		List<Menu> list = menuService.findSideMenuByUser("zhangsan");
		return list;
	}
	
	
}

