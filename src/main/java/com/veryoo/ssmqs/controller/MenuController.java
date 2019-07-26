package com.veryoo.ssmqs.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.veryoo.ssmqs.entity.Menu;
import com.veryoo.ssmqs.service.IMenuService;
import com.veryoo.ssmqs.utils.EasyuiPage;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author oubijie
 * @since 2019-07-22
 */
@Controller
public class MenuController {
	
	@Autowired
	IMenuService menuService;

	@RequestMapping(value="/menu")
	public String index(){
		return "menu";
	}
	
	@ResponseBody
	@RequestMapping(value="/menu/list")
	public EasyuiPage listMenu(int page, int rows){
		Page<Menu> p = new Page<Menu>();
		p.setCurrent(page);
		p.setSize(rows);
		IPage<Menu> list = menuService.page(p);
		
		EasyuiPage easyuiPage = new EasyuiPage();
		easyuiPage.setTotal(list.getTotal());
		easyuiPage.setRows(list.getRecords());
		return easyuiPage;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/sidemenu")
	public List<Menu> getUserMenu(){
		List<Menu> list = menuService.findSideMenuByUser("zhangsan");
		return list;
	}
	
	
	
	
}

