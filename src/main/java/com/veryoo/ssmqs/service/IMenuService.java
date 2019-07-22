package com.veryoo.ssmqs.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.veryoo.ssmqs.entity.Menu;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author oubijie
 * @since 2019-07-22
 */
public interface IMenuService extends IService<Menu> {

	List<Menu> findSideMenuByUser(String username);
}
