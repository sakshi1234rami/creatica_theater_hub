package creatica_theater_hub.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegistrationController {
	
	@RequestMapping("/admin/registration")
	public String registration(){
		
		return "admin/reg";
	}
	
}
