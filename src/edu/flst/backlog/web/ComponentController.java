package edu.flst.backlog.web;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.BacklogServiceImpl;


@Controller
@RequestMapping(value="/component")
public class ComponentController {
	
	@Autowired private BacklogServiceImpl backlogService;

	@ModelAttribute("userCache")
	public List<User> getUsers(){
		return backlogService.listUsers();
	}
	
	@RequestMapping(value = "/new.do", method = RequestMethod.GET)
	public ModelAndView formComponent() {
		
		ModelAndView ModelAndView = new ModelAndView("component/componentForm", "command", new Component());
		ModelAndView.addObject("users", backlogService.listUsers());
		
		return ModelAndView;
	}
	
	@RequestMapping(value = "/add.do", method = RequestMethod.POST)
	public ModelAndView addComponent(@ModelAttribute @Valid Component component, BindingResult result){

		component.setOwner(backlogService.getUser(component.getOwner().getId()));
		
		Component newComponent = backlogService.createComponent(component);
		
		return new ModelAndView("component/componentView", "component", newComponent);
	}
}
