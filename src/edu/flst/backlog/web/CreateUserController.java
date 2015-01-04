package edu.flst.backlog.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.User;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;

@Controller
public class CreateUserController extends HttpServlet {
	
	@RequestMapping(value="formUser.do", method=RequestMethod.GET)
	public ModelAndView userForm(){
		
		//envoie des job pour la liste déroulante
		ArrayList <Job> jobList = new ArrayList<Job>();
		for(Job job : Job.values()){
			 jobList.add(job);
		}
		ModelAndView ModelAndView = new ModelAndView();
		ModelAndView.addObject("jobList", jobList);
		return ModelAndView;
	}	
	
	@RequestMapping(value = "CreateUser.do", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
				//création du user
				User instance_user= new User();
				instance_user.setFirstName(request.getParameter("Lastname"));
				instance_user.setLastName(request.getParameter("Firstname"));	 
				Job setterjob;
				for(Job job : Job.values()){
				    if(job.toString().equals(request.getParameter("job"))){
				        setterjob=job;
				        instance_user.setJob(setterjob); 
				    }
				}
				
				ModelAndView MnV = new ModelAndView("addUser", "addUser", instance_user);
				return MnV;
	}
}

  