package edu.flst.backlog.web;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Controller;

import edu.flst.backlog.bo.Backlog;
import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.Status;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.BacklogService;
import edu.flst.backlog.service.BacklogServiceImpl;

@Configurable
public class FakeBacklog {
	@Autowired BacklogServiceImpl backlogServiceImpl;

//	public Backlog LoadFakeBacklog() {
//		
		//This user will be used as owner for everything
//		User zUser = new User();
//		zUser.setFirstName("Tom");
//		zUser.setLastName("De Puniet");
//		zUser.setJob(Job.ANALYST);
//		backlogServiceImpl.createUser(zUser);
		
//		this.loadFakeUsers(10); //Load a sample of 10 users
		
//		Component zComponent = new Component();
//		zComponent.setLabel("label component...");
//		zComponent.setDescription("description component...");
//		zComponent.setOwner(zUser);
//		Component zComponent2 = new Component();
//		zComponent2.setLabel("label component2...");
//		zComponent2.setDescription("description component2...");
//		zComponent2.setOwner(zUser);
//		Component zComponent3 = new Component();
//		zComponent3.setLabel("label component3...");
//		zComponent3.setDescription("description component3...");
//		zComponent3.setOwner(zUser);
//		
		
//		Story zStory = new Story();
//		zStory.setComment("comment...");
//		zStory.setLabel("label...");
//		zStory.setStatus(Status.OPEN);
//		zStory.setUser(zUser);
//		zStory.setComponent(zComponent);
//		backlogService.createStory(zStory);
//		
//		Story zStory2 = new Story();
//		zStory2.setComment("comment2...");
//		zStory2.setLabel("label2...");
//		zStory2.setStatus(Status.IN_PROGRESS);
//		zStory2.setUser(zUser);
//		zStory2.setComponent(zComponent2);
//		backlogService.createStory(zStory2);
//		
//		Story zStory3 = new Story();
//		zStory3.setComment("comment3...");
//		zStory3.setLabel("label3...");
//		zStory3.setStatus(Status.DONE);
//		zStory3.setUser(zUser);
//		zStory3.setComponent(zComponent2);
//		backlogService.createStory(zStory3);
		
//		Backlog zBackLog = new Backlog();
////		zBackLog = backlogService.getBacklog();
//		zBackLog.setOwner(zUser);
//		zBackLog.setDescription("description backlog...");
//		
//		return zBackLog;
//	}
	
	public void loadFakeUsers(Integer numberOfUsers) {
		for(int x = 0; x < numberOfUsers; x++) {
			User zUser = new User();
			zUser.setFirstName("User");
			zUser.setLastName(numberOfUsers.toString());
			zUser.setJob(Job.ANALYST);
			if(zUser == null)
				System.out.println("zUser is null");
			if(backlogServiceImpl == null)
				System.out.println("backlogService is null");
			backlogServiceImpl.createUser(zUser);
		}
	}
}
