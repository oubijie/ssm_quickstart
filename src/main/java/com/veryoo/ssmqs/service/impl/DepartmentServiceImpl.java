package com.veryoo.ssmqs.service.impl;

import com.veryoo.ssmqs.entity.Department;
import com.veryoo.ssmqs.mapper.DepartmentMapper;
import com.veryoo.ssmqs.service.IDepartmentService;
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
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements IDepartmentService {

}
