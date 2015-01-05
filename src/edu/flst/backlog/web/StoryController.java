package edu.flst.backlog.web;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ModelAttribute;

import edu.flst.backlog.bo.Status;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.service.BacklogServiceImpl;

@Controller
@RequestMapping(value="/story")
public class StoryController {

	@Autowired private BacklogServiceImpl backlogService;
	
	@RequestMapping(value="/new.do", method = RequestMethod.GET)
	public ModelAndView newStory(){
		
		ModelAndView modelAndView = new ModelAndView("story/storyForm", "story", new Story());
		modelAndView.addObject("users", backlogService.listUsers());
		modelAndView.addObject("components", backlogService.listComponents());
		modelAndView.addObject("status", Status.values());
		
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView formStory(@Valid @ModelAttribute Story story, BindingResult result){	
		if(result.hasErrors()){
			ModelAndView modelAndView = new ModelAndView("story/storyForm", "story", story);
			modelAndView.addObject("errors", result.getAllErrors());
			modelAndView.addObject("users", backlogService.listUsers());
			modelAndView.addObject("components", backlogService.listComponents());
			modelAndView.addObject("status", Status.values());
			
			return modelAndView;
		}
		
		Story newStory = new Story();
		if(story.getId() > 0){
			newStory = story;
			newStory.setCreatedDate(backlogService.getStory(story.getId()).getCreatedDate());
		} else {
			newStory = backlogService.createStory(story);
		}
		
		if(story.getUser() != null){
			newStory.setUser(backlogService.getUser(story.getUser().getId()));
		}

		if(story.getComponent() != null){
			newStory.setComponent(backlogService.getComponent(story.getComponent().getId()));
		}
		
		if(story.getStatus() != null){
			newStory.setStatus(story.getStatus());
		}
		
		backlogService.updateStory(newStory);
		
		return new ModelAndView("redirect:/story/view/" + story.getId() + ".do", "story", newStory);
	}
	
	@RequestMapping(value="/view/{id}.do", method = RequestMethod.GET)
	public ModelAndView viewStory(@PathVariable int id){
		
		Story story = backlogService.getStory(id);
		
		return new ModelAndView("story/storyView", "story", story);
	}
	
	@RequestMapping(value="/edit/{id}.do", method = RequestMethod.GET)
	public ModelAndView editStory(@PathVariable int id){
		
		Story story = backlogService.getStory(id);
		
		ModelAndView modelAndView = new ModelAndView("story/storyForm", "story", story);
		modelAndView.addObject("users", backlogService.listUsers());
		modelAndView.addObject("components", backlogService.listComponents());
		modelAndView.addObject("status", Status.values());
		
		return modelAndView;
	}
	
	@RequestMapping(value="/remove/{id}.do", method = RequestMethod.GET)
	public ModelAndView removeStory(@PathVariable int id){
		Story story = backlogService.getStory(id);
		
		backlogService.deleteStory(story);
		
		return new ModelAndView("redirect:/backlog.do");
	}
	
}