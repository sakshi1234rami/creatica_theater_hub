package creatica_theater_hub.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import creatica_theater_hub.Model.AdminMasterModel;
import cretatica_theater_hub.Repositries.AdminMasterRepositry;

@Controller
@RequestMapping("/admin")
public class AdminLoginController {

	@Autowired
	private AdminMasterRepositry _adm;

	// Show the login page
	@GetMapping("/login")
	public String login() {
		return "admin/login";
	}

	// Handle login form submission
	@PostMapping("/login")
	public String loginPost(
			Model model,
			jakarta.servlet.http.HttpSession session,
			@RequestParam("username") String n,
			@RequestParam("password") String p) {

		AdminMasterModel response = _adm.findByAdmNameAndAdmPassword(n, p);

		if (response == null) {
			model.addAttribute("errorMessage", "Invalid Credentials. Please try again.");
			return "admin/login";
		} else {
			// Store admin info in session
			session.setAttribute("adminName", response.getAdmName());
			session.setAttribute("adminEmail", response.getAdmEmail());
			session.setAttribute("adminLoggedIn", true);
			return "redirect:/admin/dashboard";
		}
	}

	// Show logout confirmation page
	@GetMapping("/logout")
	public String showLogoutPage() {
		return "admin/logout";
	}

	// Handle logout action
	@PostMapping("/logout")
	public String logout(jakarta.servlet.http.HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login?logout=success";
	}
}
