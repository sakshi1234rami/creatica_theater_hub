package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import creatica_theater_hub.Model.DonationMasterModel;
import cretatica_theater_hub.Repositries.DonationRepository;

import java.time.LocalDate;

@Controller
public class UserDonationController {

	@Autowired
	private DonationRepository _dRepo;

	@RequestMapping("/user/donation")
	public String Donation() {
		return "user/donation";
	}

	@RequestMapping(value = "/user/donationPost", method = org.springframework.web.bind.annotation.RequestMethod.POST)
	public String donationPost(@ModelAttribute("DonationMasterModel") DonationMasterModel dmm) {
		try {
			dmm.setDate(LocalDate.now());
			dmm.setPaymentStatus("Completed");
			// PaymentMethod and transactionId are now automatically bound from the form
			_dRepo.save(dmm);
			return "redirect:/user/donation?success=true&pid=" + dmm.getTransactionId();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/user/donation?error=true";
	}
}
