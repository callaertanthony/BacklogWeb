package edu.flst.backlog.web;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.*;


@Controller
@RequestMapping(value="/component")
public class ComponentController {
	
	@Autowired private BacklogService backlogService;

	@RequestMapping(value = "/new.do", method = RequestMethod.GET)
	public ModelAndView formComponent() {
		
		User zUser = new User();
		zUser.setId(123);
		zUser.setFirstName("Tom");
		zUser.setLastName("De Puniet");
		zUser.setJob(Job.ANALYST);
		
		backlogService.createUser(zUser);
		Collection<User> cUsers = backlogService.listUsers();
		ModelAndView ModelAndView = new ModelAndView("component/formComponent", "command", new Component());
		ModelAndView.addObject("users", cUsers);
		return ModelAndView;
	}
	
	@RequestMapping(value = "/add.do", method = RequestMethod.POST)
	public ModelAndView addComponent(HttpServletRequest request)
	throws ServletException, IOException {
		Component zComponent = new Component();
		User zUser = new User();
		
		zUser = backlogService.getUser(Integer.parseInt(request.getParameter("owner")));
		zComponent.setLabel(request.getParameter("label"));
		zComponent.setDescription(request.getParameter("description"));
		zComponent.setOwner(zUser);
		backlogService.createComponent(zComponent);
	
		ModelAndView mav = new ModelAndView("component/addComponent", "component", zComponent);
		return mav;
	}
}
