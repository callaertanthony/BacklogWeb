package edu.flst.backlog.service;

import java.util.List;

import edu.flst.backlog.bo.Backlog;
import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.bo.User;


public interface BacklogService {

	public User createUser(User user);

	public void updateUser(User user);

	public void deleteUser(User user);

	public List<User> listUsers();
	
	public User getUser(int id);

	public Component createComponent(Component component);

	public void updateComponent(Component component);

	public void deleteComponent(Component component);

	public List<Component> listComponents();
	
	public Component getComponent(int id);

	public Backlog getBacklog();
	
	public Story createStory(Story story);
	
	public void updateStory(Story story);
	
	public void deleteStory(Story story);
	
	public Story getStory(int id);
	
	public List<Story> getLatests();
}
