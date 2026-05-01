package creatica_theater_hub.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserGalleryController {
	
	@RequestMapping("/user/gallery")
	public String Gallery() {
		return"user/gallery";
	}

}
