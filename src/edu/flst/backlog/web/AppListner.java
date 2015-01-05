package edu.flst.backlog.web;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.factory.annotation.Autowired;

import edu.flst.backlog.bo.Job;
import edu.flst.backlog.bo.User;
import edu.flst.backlog.service.BacklogServiceImpl;

@WebListener
public class AppListner implements ServletContextListener {	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("Stopping application..");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("Starting application..");	
	}
}