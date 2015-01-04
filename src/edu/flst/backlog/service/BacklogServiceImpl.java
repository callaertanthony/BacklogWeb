package edu.flst.backlog.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import edu.flst.backlog.bo.Backlog;
import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.bo.User;

@org.springframework.stereotype.Component
public class BacklogServiceImpl implements BacklogService {
	
	private List<User> users = new ArrayList<User>();
	private List<Component> components = new ArrayList<Component>();
	private Backlog baclklog = new Backlog();
	
	private static int idUser = 0;
	private static int idComponent = 0;
	private static int idStory = 0;

	@Override
	public Component createComponent(Component component) {
		component.setId(idComponent++);
		components.add(component);
		return component;
	}

	@Override
	public User createUser(User user) {
		user.setId(idUser++);
		users.add(user);
		return user;
	}

	@Override
	public void deleteComponent(Component component) {
		components.remove(component);
	}

	@Override
	public void deleteUser(User user) {
		users.remove(user);
	}

	@Override
	public Backlog getBacklog() {
		return baclklog;
	}

	@Override
	public void updateComponent(Component component) {
		components.remove(component);
		components.add(component);
	}

	@Override
	public void updateUser(User user) {
		users.remove(user);
		users.add(user);
	}

	@Override
	public List<Component> listComponents() {
		Collections.sort(components);
		return components;
	}

	@Override
	public List<User> listUsers() {
		Collections.sort(users);
		return users;
	}

	@Override
	public User getUser(int id) {
		for(User user : users){
			if(user.getId() == id){
				return user;
			}
		}

		return null;
	}

	@Override
	public Component getComponent(int id) {
		for(Component component : components){
			if(component.getId() == id){
				return component;
			}
		}
		
		return null;
	}

	@Override
	public Story createStory(Story story) {
		story.setId(idStory++);
		story.setCreatedDate(new Date());
		story.setModifiedDate(new Date());
		baclklog.addStory(story);
		return story;
	}

	@Override
	public List<Story> getLatests() {
		Collections.sort(baclklog.getStories(), new LatestStoryComparator());
		if(baclklog.getStories().size() > 3){
			return baclklog.getStories().subList(0, 3);			
		}
		
		return baclklog.getStories();
	}

	@Override
	public void updateStory(Story story) {
		story.setModifiedDate(new Date());
		baclklog.updateStory(story);
	}

	@Override
	public void deleteStory(Story story) {
		baclklog.getStories().remove(story);
	}

	@Override
	public Story getStory(int id) {
		for(Story story : baclklog.getStories()){
			if(story.getId() == id){
				return story;
			}
		}
		
		return null;
	}

}
