package edu.flst.backlog.service;

import java.util.Comparator;

import edu.flst.backlog.bo.Story;

public class LatestStoryComparator implements Comparator<Story>{

	@Override
	public int compare(Story arg0, Story arg1) {
		return arg1.getModifiedDate().compareTo(arg0.getModifiedDate());
	}

}
