package ca.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import ca.project.Service.WineService;

@Controller
@RequestMapping("wine")
public class WineController {
	
	@Autowired
	private WineService wine_service;
	
	
	
	
	
}
