package com.veryoo.ssmqs.service.impl;

import com.veryoo.ssmqs.entity.Employee;
import com.veryoo.ssmqs.mapper.EmployeeMapper;
import com.veryoo.ssmqs.service.IEmployeeService;
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
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements IEmployeeService {

}
