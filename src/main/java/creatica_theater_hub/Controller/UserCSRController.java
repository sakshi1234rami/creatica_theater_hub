package creatica_theater_hub.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserCSRController {
	
	@RequestMapping("/user/csr")
	public String CRC() {
		
		return"user/csr";
	}

}
