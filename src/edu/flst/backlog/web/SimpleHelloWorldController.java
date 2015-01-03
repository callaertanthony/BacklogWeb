package edu.flst.backlog.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.service.BacklogService;

@Controller
public class SimpleHelloWorldController {
	
	@Autowired private BacklogService backlogService;

	@RequestMapping(value="/hello.do", method=RequestMethod.GET)
	public String sayHello(HttpServletRequest req, HttpServletResponse resp){
		String trace = req.getParameter("trace");
		System.out.println(trace);
		return "hello";
	}
	
	
	@RequestMapping(value="/hello/{you}.do", method=RequestMethod.GET)
	public ModelAndView sayHelloYou(@PathVariable String you, @RequestParam(required=false) String msg){
		ModelAndView mNv = new ModelAndView("helloYou");
		mNv.addObject("model", you);
		mNv.addObject("message", msg);
		
		return mNv;
	}
}
