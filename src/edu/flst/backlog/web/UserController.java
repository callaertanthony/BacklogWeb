package edu.flst.backlog.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView userForm(){
		
		ModelAndView modelAndView = new ModelAndView("user/userForm", "command", new User());
		modelAndView.addObject("jobs", Job.values());
		
		return modelAndView;
	}	
	
	@RequestMapping(value = "add.do", method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute User user, ModelMap model){
		model.addAttribute("firstName", user.getFirstName());
		model.addAttribute("lastName", user.getLastName());
		model.addAttribute("job", user.getJob());
		
		User newUser = backlogService.createUser(user);
		
		return new ModelAndView("user/userView", "command", newUser);
	}
}

  