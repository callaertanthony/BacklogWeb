package edu.flst.backlog.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.BacklogServiceImpl;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired private BacklogServiceImpl backlogService;
	
	@RequestMapping(value="/new.do", method=RequestMethod.GET)
	public ModelAndView newUser(){
		
		ModelAndView modelAndView = new ModelAndView("user/userForm", "command", new User());
		modelAndView.addObject("jobs", Job.values());
		
		return modelAndView;
	}	
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView formUser(@ModelAttribute User user){
		
		User newUser = new User();
		if(user.getId() > 0){
			newUser = user;
		} else {
			newUser = backlogService.createUser(user);
		}
		
		if(user.getJob() != null){
			newUser.setJob(user.getJob());
		}
		
		backlogService.updateUser(newUser);
		
		return new ModelAndView("redirect:/user/view/" + user.getId() + ".do", "user", newUser);
	}
	
	@RequestMapping(value="/view/{id}.do", method = RequestMethod.GET)
	public ModelAndView viewUser(@PathVariable int id){
		
		User user = backlogService.getUser(id);
		
		return new ModelAndView("user/userView", "user", user);
	}
	
	@RequestMapping(value="/edit/{id}.do", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable int id){
		
		User user = backlogService.getUser(id);
		
		ModelAndView modelAndView = new ModelAndView("user/userForm", "command", user);
		modelAndView.addObject("jobs", Job.values());
		
		return modelAndView;
	}
}

  