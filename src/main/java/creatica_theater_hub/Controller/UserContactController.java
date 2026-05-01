package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;

import cretatica_theater_hub.Repositries.ContactMessageRepository;
import creatica_theater_hub.Model.ContactMessageMasterModel;

@Controller
public class UserContactController {
	
	@Autowired
	private ContactMessageRepository _contactRepo;

	@RequestMapping("/user/contact")
	public String Contact() {
		return "user/contact";
	}

	@RequestMapping(value = "/user/contactPost", method = RequestMethod.POST)
	public String ContactPost(
			@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("email") String email,
			@RequestParam("subject") String subject,
			@RequestParam("message") String message) {
		
		try {
			ContactMessageMasterModel msg = new ContactMessageMasterModel();
			msg.setName(firstName + " " + lastName);
			msg.setEmail(email);
			msg.setSubject(subject);
			msg.setMessage(message);
			_contactRepo.save(msg);
			return "redirect:/user/contact?success=true";
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/user/contact";
	}
}
