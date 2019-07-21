package com.veryoo.ssmqs.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	IUserService userService;

	@RequestMapping("/hello")
	public String hello(Model model){
		User user = userService.getById(1L);
		System.out.println(user);
		model.addAttribute(user);
		return "hello";
	}
	
	@ResponseBody
	@RequestMapping("/hellojson")
	public User hellojson(){
		User user = userService.getById(1L);
		return user;
	}
}
