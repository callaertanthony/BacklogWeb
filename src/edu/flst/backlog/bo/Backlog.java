package edu.flst.backlog.bo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang.builder.ToStringBuilder;


public class Backlog implements Serializable {

	private static final long serialVersionUID = -1711180866003111383L;
	
	private List<Story> stories = new ArrayList<Story>();
	@Size(min=1, max=5000)
	private String description;
	@NotNull
	private User owner;

	public void setStories(List<Story> stories) {
		this.stories = stories;
	}

	public List<Story> getStories() {
		Collections.sort(stories);
		return stories;
	}

	public void addStory(Story story){
		stories.add(story);
	}
	
	public void updateStory(Story story){
		stories.remove(story);
		stories.add(story);
	}

	public void removeStory(Story story){
		stories.remove(story);
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
