package com.veryoo.ssmqs.service.impl;

import com.veryoo.ssmqs.entity.Menu;
import com.veryoo.ssmqs.mapper.MenuMapper;
import com.veryoo.ssmqs.service.IMenuService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author oubijie
 * @since 2019-07-22
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

	@Override
	public List<Menu> findSideMenuByUser(String username) {
		MenuMapper mapper = (MenuMapper)baseMapper;
		
		List<Menu> menus = mapper.selectMenuByUser(username);
		for(Menu menu : menus){
			List<Menu> children = mapper.selectList(new QueryWrapper<Menu>().eq("parent_id", menu.getId()));
			menu.setChildren(children);
		}
		
		System.out.println(menus);
		return menus;
	}

}
