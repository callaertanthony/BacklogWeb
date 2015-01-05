package edu.flst.backlog.service;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.factory.annotation.Autowired;

import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.Status;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.bo.User;

@WebListener
public class ApplicationListener implements ServletContextListener {
	
	@Autowired public BacklogServiceImpl backlogService;
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("Stopping my application");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("Starting de mon application");
//		User zUser = new User();
//		zUser.setFirstName("Tom");
//		zUser.setLastName("De Puniet");
//		zUser.setJob(Job.ANALYST);
//		backlogService = new BacklogServiceImpl();
//		backlogService.createUser(zUser);
//		
//		Component zComponent = new Component();
//		zComponent.setLabel("label component...");
//		zComponent.setDescription("description component...");
//		zComponent.setOwner(zUser);
//		backlogService.createComponent(zComponent);
//		Component zComponent2 = new Component();
//		zComponent2.setLabel("label component2...");
//		zComponent2.setDescription("description component2...");
//		zComponent2.setOwner(zUser);
//		backlogService.createComponent(zComponent2);
//		Component zComponent3 = new Component();
//		zComponent3.setLabel("label component3...");
//		zComponent3.setDescription("description component3...");
//		zComponent3.setOwner(zUser);
//		backlogService.createComponent(zComponent3);
//		
//		Story zStory = new Story();
//		zStory.setComment("comment story1...");
//		zStory.setLabel("Story 1 (label)");
//		zStory.setStatus(Status.OPEN);
//		zStory.setUser(zUser);
//		zStory.setComponent(zComponent);
//		backlogService.createStory(zStory);
//		
//		Story zStory2 = new Story();
//		zStory2.setComment("comment story2...");
//		zStory2.setLabel("Story 2 (label)");
//		zStory2.setStatus(Status.IN_PROGRESS);
//		zStory2.setUser(zUser);
//		zStory2.setComponent(zComponent2);
//		backlogService.createStory(zStory2);
//		
//		Story zStory3 = new Story();
//		zStory3.setComment("comment story3...");
//		zStory3.setLabel("Story 3 (label)");
//		zStory3.setStatus(Status.DONE);
//		zStory3.setUser(zUser);
//		zStory3.setComponent(zComponent2);
//		backlogService.createStory(zStory3);
//		
//		Story zStory4 = new Story();
//		zStory4.setComment("comment story4...");
//		zStory4.setLabel("Story 4 (label)");
//		zStory4.setStatus(Status.DONE);
//		zStory4.setUser(zUser);
//		zStory4.setComponent(zComponent);
//		backlogService.createStory(zStory4);
//		
//		Story zStory5 = new Story();
//		zStory5.setComment("comment story5...");
//		zStory5.setLabel("Story 5 (label)");
//		zStory5.setStatus(Status.DONE);
//		zStory5.setUser(zUser);
//		zStory5.setComponent(zComponent);
//		backlogService.createStory(zStory5);
//		
//		Story zStory6 = new Story();
//		zStory6.setComment("comment story6...");
//		zStory6.setLabel("Story 6 (label)");
//		zStory6.setStatus(Status.DONE);
//		zStory6.setUser(zUser);
//		zStory6.setComponent(zComponent2);
//		backlogService.createStory(zStory6);
//		
//		Story zStory7 = new Story();
//		zStory7.setComment("comment story7...");
//		zStory7.setLabel("Story 7 (label)");
//		zStory7.setStatus(Status.DONE);
//		zStory7.setUser(zUser);
//		zStory7.setComponent(zComponent3);
//		backlogService.createStory(zStory7);
//		Story zStory8 = new Story();
//		zStory8.setComment("comment story8...");
//		zStory8.setLabel("Story 8 (label)");
//		zStory8.setStatus(Status.DONE);
//		zStory8.setUser(zUser);
//		zStory8.setComponent(zComponent2);
//		backlogService.createStory(zStory8);
		
	}
}
