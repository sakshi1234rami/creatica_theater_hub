package creatica_theater_hub.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserAboutController {
	
	@RequestMapping("/user/about")
	public String About() {
		
		
		return"user/aboutUs";
	}
	
	@RequestMapping("/user/about/volunteer")
	public String volunteer() {
		
		
		return"user/volunteer";
	}
	
	@RequestMapping("/user/about/award")
	public String award() {
		
		
		return"user/award_news";
	}
	
	@RequestMapping("/user/about/team")
	public String team() {
		
		
		return"user/team_artist";
	}
}
