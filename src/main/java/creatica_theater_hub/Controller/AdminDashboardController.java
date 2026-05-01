package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cretatica_theater_hub.Repositries.StudentRepository;
import cretatica_theater_hub.Repositries.VolunteerRepositry;
import cretatica_theater_hub.Repositries.EventRepository;
import cretatica_theater_hub.Repositries.DonationRepository;
import cretatica_theater_hub.Repositries.ProgramRepository;

@Controller
public class AdminDashboardController {
	
	@Autowired
	private StudentRepository studentRepo;
	
	@Autowired
	private VolunteerRepositry volunteerRepo;
	
	@Autowired
	private EventRepository eventRepo;
	
	@Autowired
	private DonationRepository donationRepo;

	@Autowired
	private ProgramRepository programRepo;

	@RequestMapping("/admin/dashboard")
	public String dashboard(Model model) {
		model.addAttribute("totalStudents", studentRepo.count());
		model.addAttribute("totalVolunteers", volunteerRepo.count());
		model.addAttribute("totalEvents", eventRepo.count());
		model.addAttribute("totalDonations", donationRepo.count());
		model.addAttribute("totalPrograms", programRepo.count());
		
		// Fetch recent donations (last 5)
		model.addAttribute("recentDonations", donationRepo.findAll()); // Ideally use pagination or sorting if available
		
		// Fetch events
		model.addAttribute("upcomingEvents", eventRepo.findAll());
		
		return "admin/Dashboard/index";
	}
}
