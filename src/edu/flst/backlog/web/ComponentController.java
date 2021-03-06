package edu.flst.backlog.web;


import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.flst.backlog.bo.Component;
import edu.flst.backlog.bo.Story;
import edu.flst.backlog.service.BacklogServiceImpl;


@Controller
@RequestMapping(value="/component")
public class ComponentController {
	
	@Autowired private BacklogServiceImpl backlogService;
	
	@RequestMapping(value = "/new.do", method = RequestMethod.GET)
	public ModelAndView newComponent() {
		
		ModelAndView modelAndView = new ModelAndView("component/componentForm", "component", new Component());
		modelAndView.addObject("users", backlogService.listUsers());
		
		return modelAndView;
	}
	
	@RequestMapping(value="/list.do", method=RequestMethod.GET)
	public ModelAndView listUsers(){
		Collection<Component> cComponent= backlogService.listComponents();
		ModelAndView modelAndView = new ModelAndView("component/componentList");
		modelAndView.addObject("components", cComponent);
		
		return modelAndView;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView formComponent(@Valid @ModelAttribute Component component, BindingResult result){
		if(result.hasErrors()){
			ModelAndView modelAndView = new ModelAndView("component/componentForm", "component", component);
			modelAndView.addObject("errors", result.getAllErrors());
			modelAndView.addObject("users", backlogService.listUsers());
			
			
			return modelAndView;
		}
		Component newComponent = new Component();
		if(component.getId() > 0){
			newComponent = component;
		} else {
			newComponent = backlogService.createComponent(component);
		}
		
		if(component.getOwner() != null){
			newComponent.setOwner(backlogService.getUser(component.getOwner().getId()));
		}
		
		backlogService.updateComponent(newComponent);
		
		return new ModelAndView("redirect:/component/view/" + newComponent.getId() + ".do", "component", newComponent);
	}
	
	@RequestMapping(value="/view/{id}.do", method = RequestMethod.GET)
	public ModelAndView viewComponent(@PathVariable int id){
		
		Component component = backlogService.getComponent(id);
		
		return new ModelAndView("component/componentView", "component", component);
	}
	
	@RequestMapping(value="/edit/{id}.do", method = RequestMethod.GET)
	public ModelAndView editComponent(@PathVariable int id){
		Component component = backlogService.getComponent(id);
		
		ModelAndView modelAndView = new ModelAndView("component/componentForm", "component", component);
		modelAndView.addObject("users", backlogService.listUsers());
		
		return modelAndView;
	}
	
	@RequestMapping(value="/remove/{id}.do", method = RequestMethod.GET)
	public ModelAndView removeComponent(@PathVariable int id){
		Component component = backlogService.getComponent(id);
		
		for(Story story : backlogService.getBacklog().getStories()){
			if(component.equals(story.getComponent())){
				story.setComponent(new Component());
			}
		}
		
		backlogService.deleteComponent(component);
		
		return new ModelAndView("redirect:/component/list.do");
	}
}
