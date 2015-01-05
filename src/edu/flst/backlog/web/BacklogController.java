package edu.flst.backlog.web;

import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Backlog;
import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.Status;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.BacklogServiceImpl;

@Controller
public class BacklogController {

	@Autowired private BacklogServiceImpl backlogService;
	
	@RequestMapping(value = "/backlog.do", method = RequestMethod.GET)
	public ModelAndView showBacklog() {
		Backlog zBackLog = backlogService.getBacklog();
		Collection<Story> cStory =  zBackLog.getStories();
		ModelAndView ModelAndView = new ModelAndView("backlog");
		ModelAndView.addObject("backlog", zBackLog);
		ModelAndView.addObject("stories", cStory);
		return ModelAndView;
	}
	
	@RequestMapping(value = "/editBacklog.do", method = RequestMethod.GET)
	public ModelAndView editBacklog() {
		Backlog zBackLog = backlogService.getBacklog();
		ModelAndView modelAndView = new ModelAndView("backlog/backlogForm", "backlog", zBackLog);
		return modelAndView;
	}
	
	@RequestMapping(value = "/updateBacklog.do", method = RequestMethod.POST)
	public ModelAndView formBackLog(@Valid @ModelAttribute Backlog backlog, BindingResult result){
		if(result.hasErrors()){
			ModelAndView modelAndView = new ModelAndView("backlog/backlogView", "backlog", backlog);
			modelAndView.addObject("errors", result.getAllErrors());
			modelAndView.addObject("users", backlogService.listUsers());
			
			return modelAndView;
		}
		Backlog zBacklog = backlogService.getBacklog();
		zBacklog.setOwner(backlog.getOwner());
		zBacklog.setDescription(backlog.getDescription());
		
		return new ModelAndView("redirect:/backlog/backlogView", "backlog", zBacklog);
	}
}