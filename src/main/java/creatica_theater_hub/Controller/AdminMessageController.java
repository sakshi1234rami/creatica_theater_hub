package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cretatica_theater_hub.Repositries.ContactMessageRepository;
import creatica_theater_hub.Model.ContactMessageMasterModel;

import java.util.List;
import java.util.Optional;

@Controller
public class AdminMessageController {

	@Autowired
	private ContactMessageRepository _contactRepo;

	@RequestMapping("/admin/messages")
	public String message(Model model) {
		List<ContactMessageMasterModel> messages = _contactRepo.findAll();
		model.addAttribute("messages", messages);
		return "admin/Messagespages/index";
	}

	@RequestMapping("/admin/messages/delete")
	public String delete(@RequestParam("delid") String id) {
		Optional<ContactMessageMasterModel> msg = _contactRepo.findById(id);
		if(msg.isPresent()) {
			_contactRepo.delete(msg.get());
		}
		return "redirect:/admin/messages";
	}
}
