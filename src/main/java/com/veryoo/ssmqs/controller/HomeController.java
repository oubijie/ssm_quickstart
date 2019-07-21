package com.veryoo.ssmqs.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.veryoo.ssmqs.entity.User;
import com.veryoo.ssmqs.service.IUserService;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author oubijie
 * @since 2019-07-21
 */
@Controller
public class HomeController {
	
	@Autowired
	IUserService userService;

	@RequestMapping("/home")
	public String hello(Model model){
		return "home";
	}
	
}
