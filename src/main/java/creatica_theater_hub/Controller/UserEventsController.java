package creatica_theater_hub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import creatica_theater_hub.Model.EventMasterModel;
import cretatica_theater_hub.Repositries.EventRepository;

@Controller
public class UserEventsController {

	@Autowired
	private EventRepository _er;

	@RequestMapping("/user/event")
	public String Event(Model model) {
		List<EventMasterModel> events = _er.findAll();
		model.addAttribute("events", events);
		return "user/events";
	}

}
