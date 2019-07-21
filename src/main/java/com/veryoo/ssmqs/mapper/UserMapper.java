package com.veryoo.ssmqs.mapper;

import com.veryoo.ssmqs.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author oubijie
 * @since 2019-07-21
 */
public interface UserMapper extends BaseMapper<User> {

	User selectByPk(Long id);
}
