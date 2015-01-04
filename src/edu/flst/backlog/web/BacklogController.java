package edu.flst.backlog.web;

import java.io.IOException;
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

	@Autowired private BacklogServiceImpl backlogService;
	
	@RequestMapping(value = "/backlog.do", method = RequestMethod.GET)
	public ModelAndView showBacklog() {
		Backlog zBackLog = new Backlog();
		zBackLog = this.test();
		Collection<Story> cStory =  zBackLog.getStories();
		ModelAndView ModelAndView = new ModelAndView("backlog");
		ModelAndView.addObject("backlog", zBackLog);
		ModelAndView.addObject("stories", cStory);
		return ModelAndView;
	}
	
	public Backlog test() {
		User zUser = new User();
		zUser.setFirstName("Tom");
		zUser.setLastName("De Puniet");
		zUser.setJob(Job.ANALYST);
		backlogService.createUser(zUser);
		
		Component zComponent = new Component();
		zComponent.setLabel("label component...");
		zComponent.setDescription("description component...");
		zComponent.setOwner(zUser);
		Component zComponent2 = new Component();
		zComponent2.setLabel("label component2...");
		zComponent2.setDescription("description component2...");
		zComponent2.setOwner(zUser);
		Component zComponent3 = new Component();
		zComponent3.setLabel("label component3...");
		zComponent3.setDescription("description component3...");
		zComponent3.setOwner(zUser);
		
		Story zStory = new Story();
		zStory.setComment("comment...");
		zStory.setLabel("label...");
		zStory.setStatus(Status.OPEN);
		zStory.setUser(zUser);
		zStory.setComponent(zComponent);
		backlogService.createStory(zStory);
		
		Story zStory2 = new Story();
		zStory2.setComment("comment2...");
		zStory2.setLabel("label2...");
		zStory2.setStatus(Status.IN_PROGRESS);
		zStory2.setUser(zUser);
		zStory2.setComponent(zComponent2);
		backlogService.createStory(zStory2);
		
		Story zStory3 = new Story();
		zStory3.setComment("comment3...");
		zStory3.setLabel("label3...");
		zStory3.setStatus(Status.DONE);
		zStory3.setUser(zUser);
		zStory3.setComponent(zComponent2);
		backlogService.createStory(zStory3);
		
		Backlog zBackLog = new Backlog();
		zBackLog = backlogService.getBacklog();
		zBackLog.setOwner(zUser);
		zBackLog.setDescription("description backlog...");
		return zBackLog;
	}
}