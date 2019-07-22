package com.veryoo.ssmqs.mapper;

import com.veryoo.ssmqs.entity.Menu;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author oubijie
 * @since 2019-07-22
 */
public interface MenuMapper extends BaseMapper<Menu> {

	List<Menu> selectMenuByUser(String username);
}
