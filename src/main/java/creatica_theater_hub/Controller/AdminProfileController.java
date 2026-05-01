package creatica_theater_hub.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminProfileController {
	@RequestMapping("/admin/profile")
	public String profile(){
		
		return "admin/profile";
	}

}
