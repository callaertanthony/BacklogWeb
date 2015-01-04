package edu.flst.backlog.web;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
}
	
