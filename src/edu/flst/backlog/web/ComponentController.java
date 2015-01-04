package edu.flst.backlog.web;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	@Autowired private BacklogService backlogService;
	
	@RequestMapping(value = "/formComponent.do", method = RequestMethod.GET)
	public ModelAndView formComponent() {
		
		User zUser = new User();
		zUser.setId(123);
		zUser.setFirstName("TomTom");
		zUser.setLastName("De Puniet");
		zUser.setJob(Job.ANALYST);
		
		backlogService.createUser(zUser);
		Collection<User> users = backlogService.listUsers();
		ModelAndView ModelAndView = new ModelAndView("formComponent", "command", new Component());
		ModelAndView.addObject("users", users);
		return ModelAndView;
	}
	
	@RequestMapping(value = "/addComponent.do", method = RequestMethod.POST)
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		response.setContentType("text/html");
		Component zComponent = new Component();
		User zUser = new User();
		
		zUser = backlogService.getUser(Integer.parseInt(request.getParameter("owner")));
		zComponent.setLabel(request.getParameter("label"));
		zComponent.setDescription(request.getParameter("description"));
		zComponent.setOwner(zUser);
		backlogService.createComponent(zComponent);
	
		
		//TODO DEBUG/TEST
		Component zComponentTest = new Component();
		zComponentTest = backlogService.getComponent(0);
		System.out.println("Res: " + zComponentTest.getLabel() + " / " + zComponentTest.getDescription());
	}
}
