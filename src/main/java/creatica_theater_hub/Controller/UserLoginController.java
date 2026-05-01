package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cretatica_theater_hub.Repositries.StudentRepository;
import cretatica_theater_hub.Repositries.VolunteerRepositry;
import cretatica_theater_hub.Repositries.BookingRepository;
import creatica_theater_hub.Model.StudentMasterModel;
import creatica_theater_hub.Model.VolunteerMasterModel;
import creatica_theater_hub.Model.BookingMasterModel;

import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserLoginController {

	@Autowired
	private StudentRepository _str;

	@Autowired
	private VolunteerRepositry _volRepo;

	@Autowired
	private BookingRepository _bookingRepo;

	@RequestMapping("/user/login")
	public String login() {
		return "user/userLogin";
	}

	@RequestMapping(value = "/user/loginPost", method = org.springframework.web.bind.annotation.RequestMethod.POST)
	public String loginPost(@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("userType") String type, HttpSession session, Model model) {
		
		try {
			if ("student".equalsIgnoreCase(type)) {
				List<StudentMasterModel> students = _str.findAll();
				for (StudentMasterModel s : students) {
					if (email != null && email.equalsIgnoreCase(s.getBIEmail()) && password != null && password.equals(s.getLCPassword())) {
						session.setAttribute("loggedInUser", s.getBIName());
						session.setAttribute("loggedInEmail", s.getBIEmail());
						session.setAttribute("loggedInUserId", s.getId());
						session.setAttribute("userType", "Student");
						return "redirect:/user/home";
					}
				}
			} else if ("volunteer".equalsIgnoreCase(type)) {
				List<VolunteerMasterModel> vols = _volRepo.findAll();
				for (VolunteerMasterModel v : vols) {
					if (email != null && email.equalsIgnoreCase(v.getVolPhone()) && password != null && password.equals(v.getVolSkill())) {
						session.setAttribute("loggedInUser", v.getVolName());
						session.setAttribute("loggedInEmail", v.getVolPhone());
						session.setAttribute("loggedInUserId", v.getId());
						session.setAttribute("userType", "Volunteer");
						return "redirect:/user/home";
					}
				}
			}
			model.addAttribute("error", "Invalid email or password. Please try again.");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error", "Something went wrong. Please try again.");
		}
		
		return "user/userLogin";
	}

	// ── USER DASHBOARD ──
	@RequestMapping("/user/dashboard")
	public String dashboard(HttpSession session, Model model) {
		String userName = (String) session.getAttribute("loggedInUser");
		String userType = (String) session.getAttribute("userType");
		String userId = (String) session.getAttribute("loggedInUserId");

		if (userName == null) {
			return "redirect:/user/login";
		}

		model.addAttribute("userName", userName);
		model.addAttribute("userType", userType);

		if ("Student".equals(userType) && userId != null) {
			// Fetch student details
			try {
				StudentMasterModel student = _str.findById(userId).orElse(null);
				if (student != null) {
					model.addAttribute("student", student);
				}
				// Fetch bookings for this student
				String userEmail = (String) session.getAttribute("loggedInEmail");
				if (userEmail != null) {
					List<BookingMasterModel> userBookings = _bookingRepo.findByUserEmail(userEmail);
					model.addAttribute("bookings", userBookings);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("Volunteer".equals(userType) && userId != null) {
			try {
				VolunteerMasterModel volunteer = _volRepo.findById(userId).orElse(null);
				if (volunteer != null) {
					model.addAttribute("volunteer", volunteer);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "user/userDashboard";
	}

	// ── LOGOUT ──
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/user/home";
	}
}
