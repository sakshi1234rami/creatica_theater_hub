package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cretatica_theater_hub.Repositries.DonationRepository;
import cretatica_theater_hub.Repositries.StudentRepository;
import cretatica_theater_hub.Repositries.VolunteerRepositry;
import creatica_theater_hub.Model.DonationMasterModel;
import creatica_theater_hub.Model.StudentMasterModel;
import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.stream.Collectors;

@Controller
public class AdminReportController {

	@Autowired
	private DonationRepository donationRepo;

	@Autowired
	private StudentRepository studentRepo;

	@Autowired
	private VolunteerRepositry volunteerRepo;

	@RequestMapping("/admin/report")
	public String report(Model model) {
		List<DonationMasterModel> donations = donationRepo.findAll();
		List<StudentMasterModel> students = studentRepo.findAll();

		Map<String, Double> monthlyDonations = new LinkedHashMap<>();
		Map<String, Long> monthlyEnrollments = new LinkedHashMap<>();

		// Initialize months in order
		String[] months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
		for (String month : months) {
			monthlyDonations.put(month, 0.0);
			monthlyEnrollments.put(month, 0L);
		}

		for (DonationMasterModel donation : donations) {
			if (donation.getDate() != null) {
				String month = donation.getDate().getMonth().name().substring(0, 3);
				month = month.substring(0, 1).toUpperCase() + month.substring(1).toLowerCase();
				monthlyDonations.put(month, monthlyDonations.getOrDefault(month, 0.0) + donation.getAmount());
			}
		}

		for (StudentMasterModel student : students) {
			if (student.getPDStartdate() != null) {
				String month = student.getPDStartdate().getMonth().name().substring(0, 3);
				month = month.substring(0, 1).toUpperCase() + month.substring(1).toLowerCase();
				monthlyEnrollments.put(month, monthlyEnrollments.getOrDefault(month, 0L) + 1);
			}
		}

		model.addAttribute("monthlyDonations", monthlyDonations);
		model.addAttribute("monthlyEnrollments", monthlyEnrollments);
		model.addAttribute("totalStudents", students.size());
		model.addAttribute("totalDonations", donations.stream()
				.filter(d -> d.getAmount() != null)
				.mapToDouble(DonationMasterModel::getAmount).sum());
		model.addAttribute("totalVolunteers", volunteerRepo.count());
		
		// For the detailed table, show recent 10 items (mixed or just donations for now)
		model.addAttribute("recentDonations", donations.stream().limit(10).collect(Collectors.toList()));

		return "admin/Reportpages/index";
	}

	@RequestMapping("/admin/report/donation")
	public String donationReport(Model model) {
		model.addAttribute("donations", donationRepo.findAll());
		return "admin/Reportpages/donation_report";
	}

	@RequestMapping("/admin/report/student")
	public String studentReport(Model model) {
		model.addAttribute("students", studentRepo.findAll());
		return "admin/Reportpages/student_report";
	}

	@RequestMapping("/admin/report/volunteer")
	public String volunteerReport(Model model) {
		model.addAttribute("volunteers", volunteerRepo.findAll());
		return "admin/Reportpages/volunteer_report";
	}
}
