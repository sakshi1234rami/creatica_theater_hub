package creatica_theater_hub.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserBlogUpdateController {
	
	@RequestMapping("/user/blog")
	public String Blog() {
		
		return"user/blogs_update";
	}

}
