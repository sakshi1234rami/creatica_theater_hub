package creatica_theater_hub.Controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import creatica_theater_hub.Model.BookingMasterModel;
import creatica_theater_hub.Model.ProgramMasterModel;
import cretatica_theater_hub.Repositries.BookingRepository;
import cretatica_theater_hub.Repositries.ProgramRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserOurprogramController {

	@Autowired
	private ProgramRepository _pr;

	@Autowired
	private BookingRepository _br;

	// ── List all programs (Our Programs page) ──
	@RequestMapping("user/ourprogram")
	public String OurProgram(Model model) {
		List<ProgramMasterModel> programs = _pr.findAll();
		model.addAttribute("programs", programs);
		return "user/ourProgram";
	}

	// ── Filter programs by category ──
	@RequestMapping("user/ourprogram/category/{category}")
	public String programsByCategory(@PathVariable("category") String category, Model model) {
		List<ProgramMasterModel> programs = _pr.findByBDCategory(category);
		model.addAttribute("programs", programs);
		model.addAttribute("selectedCategory", category);
		return "user/ourProgram";
	}

	// ── Single program detail page ──
	@RequestMapping("user/ourprogram/detail/{id}")
	public String programDetail(@PathVariable("id") String id, Model model,
			@RequestParam(value = "booked", required = false) String booked) {
		Optional<ProgramMasterModel> program = _pr.findById(id);
		if (program.isPresent()) {
			model.addAttribute("program", program.get());

			// Get other programs for "Explore Other Programs" section
			List<ProgramMasterModel> allPrograms = _pr.findAll();
			allPrograms.removeIf(p -> p.getId() != null && p.getId().equals(id));
			model.addAttribute("otherPrograms", allPrograms);

			if ("true".equals(booked)) {
				model.addAttribute("bookingSuccess", true);
			}
			return "user/programDetail";
		}
		return "redirect:/user/ourprogram";
	}

	// ── Book a program ──
	@RequestMapping(value = "user/ourprogram/book", method = RequestMethod.POST)
	public String bookProgram(@ModelAttribute("BookingMasterModel") BookingMasterModel booking,
			HttpSession session, Model model) {

		booking.setBookingDate(LocalDate.now());
		booking.setStatus("Pending");
		_br.save(booking);

		return "redirect:/user/ourprogram/detail/" + booking.getProgramId() + "?booked=true";
	}

	// ── Legacy routes — redirect to dynamic detail by category ──

	@RequestMapping("user/ourprogram/dance")
	public String dance(Model model) {
		return redirectToCategory("Dance", model);
	}

	@RequestMapping("user/ourprogram/drama")
	public String drama(Model model) {
		return redirectToCategory("Drama", model);
	}

	@RequestMapping("user/ourprogram/acting")
	public String acting(Model model) {
		return redirectToCategory("Acting", model);
	}

	@RequestMapping("user/ourprogram/music")
	public String music(Model model) {
		return redirectToCategory("music", model);
	}

	@RequestMapping("user/ourprogram/pd")
	public String PD(Model model) {
		return redirectToCategory("PD", model);
	}

	// Helper: find the first program in a category and redirect to its detail page
	private String redirectToCategory(String category, Model model) {
		List<ProgramMasterModel> programs = _pr.findByBDCategory(category);
		if (!programs.isEmpty()) {
			return "redirect:/user/ourprogram/detail/" + programs.get(0).getId();
		}
		// Fallback: show listing filtered by category
		return "redirect:/user/ourprogram/category/" + category;
	}
}
