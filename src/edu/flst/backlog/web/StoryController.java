package edu.flst.backlog.web;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Status;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.service.BacklogServiceImpl;

@Controller
@RequestMapping(value="/story")
public class StoryController {

	@Autowired private BacklogServiceImpl backlogService;
	
	@RequestMapping(value="{id}.do", method=RequestMethod.GET)
	public ModelAndView detail(@PathVariable int id){
		Story zStory = backlogService.getStory(id);
		return new ModelAndView("story/detail.do", "story", zStory);
	}
	
	@InitBinder
	protected void initBinder(WebDataBinder binder){
		
	}
	
	@RequestMapping(value="/new.do", method = RequestMethod.GET)
	public ModelAndView storyForm(){
		
		ModelAndView modelAndView = new ModelAndView("story/storyForm", "command", new Story());
		modelAndView.addObject("users", backlogService.listUsers());
		modelAndView.addObject("components", backlogService.listComponents());
		modelAndView.addObject("status", Status.values());
		
		return modelAndView;
	}
	
	@RequestMapping(value="/add.do", method = RequestMethod.POST)
	public ModelAndView addStory(@ModelAttribute Story story, ModelMap model){
		
		story.setUser(backlogService.getUser(story.getUser().getId()));
		story.setComponent(backlogService.getComponent(story.getComponent().getId()));
		
		Story newStory = backlogService.createStory(story);
		
		return new ModelAndView("story/storyView", "command", newStory);
	}
}