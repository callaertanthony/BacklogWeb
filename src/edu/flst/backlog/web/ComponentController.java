package edu.flst.backlog.web;

import java.util.Collection;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.*;

@Controller
public class ComponentController {
	
	@RequestMapping(value = "/formComponent.do", method = RequestMethod.GET)
	public ModelAndView formComponent() {
		
		User zUser = new User();
		zUser.setFirstName("TomTom");
		zUser.setLastName("De Puniet");
		zUser.setJob(Job.ANALYST);
		
		BacklogServiceImpl backlog_service = new BacklogServiceImpl();
		backlog_service.createUser(zUser);
		Collection<User> users = backlog_service.listUsers();
		ModelAndView ModelAndView = new ModelAndView("formComponent", "command", new Component());
		ModelAndView.addObject("users", users);
		return ModelAndView;
	}
	
	@RequestMapping(value = "/addComponent.do", method = RequestMethod.POST)
	   public String addController(@ModelAttribute("component")Component component, 
	   ModelMap model) {
			
	      model.addAttribute("componentLabel", component.getLabel());
//	      model.addAttribute("componentOwner", component.getOwner());
	      model.addAttribute("componentDescription", component.getDescription());
	      
	      return "formComponent";
	   }
}
