package creatica_theater_hub.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import creatica_theater_hub.Model.VolunteerMasterModel;
import cretatica_theater_hub.Repositries.VolunteerRepositry;


@Controller
public class AdminVolunteerController {
	@Autowired
	private VolunteerRepositry _volRepo;
	
	
	
	
	@RequestMapping("/admin/volunteer")
	public String volunteer(Model model) {
		List<VolunteerMasterModel> VolunteerData = _volRepo.findAll();
		model.addAttribute("Volunteers", VolunteerData);
		return "admin/Volunteerpages/index";
	}
	
	
	
	@RequestMapping("/admin/volunteerPost")
	public String volunteerPost(
			@ModelAttribute("VolunteerMasterModel") VolunteerMasterModel vmm,
			@RequestParam ("VolPhone")String  name) {
			
		try {
			System.out.println("POst req called");
			System.out.println(name);
			System.out.println(vmm.getVolName());
			_volRepo.save(vmm);
			
			return "redirect:/admin/volunteer";
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "admin/Volunteerpages/index";
	}
	
	@RequestMapping("/admin/volunteerDelete")
	public String delete(@RequestParam("delid") String id) {
		Optional<VolunteerMasterModel> data = _volRepo.findById(id);
		System.out.println(id);
		System.out.println("data Exist");
		if(data.isPresent()) {
			System.out.println("enter inside if");
			VolunteerMasterModel vdata = data.get();
			_volRepo.delete(vdata);
		}
		return "redirect:/admin/volunteer";
	}
}
