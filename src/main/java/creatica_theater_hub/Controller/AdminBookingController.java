package creatica_theater_hub.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import creatica_theater_hub.Model.BookingMasterModel;
import cretatica_theater_hub.Repositries.BookingRepository;

@Controller
public class AdminBookingController {

	@Autowired
	private BookingRepository _br;

	@RequestMapping("/admin/bookings")
	public String index(Model model) {
		List<BookingMasterModel> bookings = _br.findAll();
		model.addAttribute("bookings", bookings);
		return "admin/Bookingpages/index";
	}

	@RequestMapping("/admin/booking/approve")
	public String approve(@RequestParam(name = "bookingId") String bookingId) {
		Optional<BookingMasterModel> data = _br.findById(bookingId);
		if (data.isPresent()) {
			BookingMasterModel booking = data.get();
			booking.setStatus("Confirmed");
			_br.save(booking);
		}
		return "redirect:/admin/bookings";
	}

	@RequestMapping("/admin/booking/reject")
	public String reject(@RequestParam(name = "bookingId") String bookingId) {
		Optional<BookingMasterModel> data = _br.findById(bookingId);
		if (data.isPresent()) {
			BookingMasterModel booking = data.get();
			booking.setStatus("Rejected");
			_br.save(booking);
		}
		return "redirect:/admin/bookings";
	}

	@RequestMapping("/admin/booking/delete")
	public String delete(@RequestParam(name = "bookingId") String bookingId) {
		Optional<BookingMasterModel> data = _br.findById(bookingId);
		if (data.isPresent()) {
			_br.delete(data.get());
		}
		return "redirect:/admin/bookings";
	}
}
