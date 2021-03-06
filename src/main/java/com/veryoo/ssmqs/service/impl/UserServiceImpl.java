package com.veryoo.ssmqs.service.impl;

import com.veryoo.ssmqs.entity.User;
import com.veryoo.ssmqs.mapper.UserMapper;
import com.veryoo.ssmqs.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
