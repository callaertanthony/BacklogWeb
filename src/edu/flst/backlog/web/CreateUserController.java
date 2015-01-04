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
	
	@RequestMapping(value="userForm.do", method=RequestMethod.GET)
	public ModelAndView userForm(){

		Vector<Job> vecteurJob=new Vector();	    
		for(Job job : Job.values()){
			 vecteurJob.addElement(job);
		}
		//Affichage des job
        for(int i=0; i<vecteurJob.size(); i++)
        {
        	System.out.println (i+"=>"+vecteurJob.get(i));
        }
		ModelAndView ModelAndView = new ModelAndView();
		ModelAndView.addObject("vecteurJob", vecteurJob);
		return ModelAndView;
	}	
	
	 @RequestMapping(value = "CreateUser.do", method = RequestMethod.POST)
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println(
				"<HTML>\n<BODY>\n" +
						"<H1>Recapitulatif des informations à enregistrer</H1>\n" +
							"<UL>\n" +"  <LI>Nom: "
								+ request.getParameter("nom") + "\n" +"  <LI>Prenom: "
								+ request.getParameter("prenom") + "\n"
								+"</UL>\n" +				
				"</BODY></HTML>");  
			 
				User instance_user= new User();
				instance_user.setFirstName(request.getParameter("nom"));
				instance_user.setLastName(request.getParameter("prenom"));
				
				
				
	}
}

  