package edu.flst.backlog.web;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Backlog;
import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.Status;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.BacklogService;
import edu.flst.backlog.service.BacklogServiceImpl;

@Controller
public class BacklogController {

	@Autowired private BacklogService backlogService;
	
	
	@RequestMapping(value = "/backlog.do", method = RequestMethod.GET)
	public ModelAndView showBacklog() {
		
		//TODO DEBUG/TEST (Creating user+component+story and added them into the backlog)
		User zUser = new User();
		zUser.setId(123);
		zUser.setFirstName("Tom");
		zUser.setLastName("De Puniet");
		zUser.setJob(Job.ANALYST);
		
		Component zComponent = new Component();
		zComponent.setLabel("label component...");
		zComponent.setDescription("description component...");
		zComponent.setOwner(zUser);
		
		Story zStory = new Story();
		zStory.setComment("comment...");
		zStory.setLabel("label...");
		zStory.setStatus(Status.OPEN);
		zStory.setUser(zUser);
		zStory.setComponent(zComponent);
		backlogService.createStory(zStory);
		
		
		Backlog zBackLog = new Backlog();
		zBackLog = backlogService.getBacklog();
		zBackLog.setOwner(zUser);
		zBackLog.setDescription("description backlog...");
		Collection<Story> cStory =  zBackLog.getStories();
		ModelAndView ModelAndView = new ModelAndView("backlog");
		ModelAndView.addObject("backlog", zBackLog);
		ModelAndView.addObject("stories", cStory);
		return ModelAndView;
	}
}