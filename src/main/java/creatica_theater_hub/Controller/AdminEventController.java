package creatica_theater_hub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import creatica_theater_hub.Model.EventMasterModel;
import cretatica_theater_hub.Repositries.EventRepository;

@Controller
public class AdminEventController {
	
	@Autowired
	private EventRepository _er;
	
	@RequestMapping("/admin/event")
	public String index(Model model) {
		
		List<EventMasterModel> eventData = _er.findAll();
		System.out.println(eventData.size());
		model.addAttribute("events", eventData);
		
		return"admin/Eventpages/index";
	}
	
	@RequestMapping("/admin/eventPost")
	public String indexPost(
			@ModelAttribute("EventMasterModel") EventMasterModel emm) {
		try {
			_er.save(emm);
			return "redirect:/admin/event";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/Eventpages/index";
	}

	@RequestMapping("/admin/event/edit")
	public String eventEdit(
			@ModelAttribute("EventMasterModel") EventMasterModel emm,
			@org.springframework.web.bind.annotation.RequestParam("eId") String eId) {
		try {
			java.util.Optional<EventMasterModel> edata = _er.findById(eId);
			if(edata.isPresent()) {
				EventMasterModel data = edata.get();
				data.setEventName(emm.getEventName());
				data.setEventType(emm.getEventType());
				data.setEventDate(emm.getEventDate());
				data.setEventTime(emm.getEventTime());
				data.setEventLocation(emm.getEventLocation());
				data.setNumber(emm.getNumber());
				data.setBudget(emm.getBudget());
				data.setDescription(emm.getDescription());
				data.setStatus(emm.getStatus());
				_er.save(data);
			}
			return "redirect:/admin/event";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/Eventpages/index";
	}

	@RequestMapping("/admin/event/delete")
	public String delete(@org.springframework.web.bind.annotation.RequestParam("delid") String id) {
		java.util.Optional<EventMasterModel> data = _er.findById(id);
		if(data.isPresent()) {
			_er.delete(data.get());
		}
		return "redirect:/admin/event";
	}
}
