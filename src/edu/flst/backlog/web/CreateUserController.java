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

import edu.flst.backlog.bo.User;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;

@Controller
public class CreateUserController extends HttpServlet {

	
	@RequestMapping(value="userForm.do", method=RequestMethod.GET)
	public ModelAndView sayUserForm(HttpServletRequest req, HttpServletResponse resp){
		ModelAndView mNv = new ModelAndView("userForm");
		return mNv;
	}
//	
	 @RequestMapping(value = "CreateUser.do", method = RequestMethod.POST)
//	   public String AfficheUser(@ModelAttribute("SpringWeb")User user, 
//	   ModelMap model) {
//	      model.addAttribute("name", user.setFirstName();
//	      model.addAttribute("prenom", user.setLastName(lastName);
//	      
//	      return "result";
//	   }
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println(
				"<HTML>\n<BODY>\n" +
						"<H1>Recapitulatif des informations</H1>\n" +
							"<UL>\n" +"  <LI>Nom: "
								+ request.getParameter("nom") + "\n" +"  <LI>Prenom: "
								+ request.getParameter("prenom") + "\n"
								+"</UL>\n" +				
				"</BODY></HTML>");  
}
}

  