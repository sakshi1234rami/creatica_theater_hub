package creatica_theater_hub.Controller;

import java.time.LocalDate;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import creatica_theater_hub.Model.DonationMasterModel;

import cretatica_theater_hub.Repositries.DonationRepository;


@Controller
public class AdminDonationController {
	
	@Autowired
	private DonationRepository _dRepo;
	

	
	@RequestMapping("/admin/donation")
	public String donation(Model model)
	{
		List<DonationMasterModel> DonationData = _dRepo.findAll();
		model.addAttribute("Donations", DonationData);
		return "admin/Donationpages/index";
	}
	
	@RequestMapping("/admin/donationPost")
	public String donationPost(
			@ModelAttribute("DonationMasterModel")DonationMasterModel dmm,
			@RequestParam("DonationName")String name
			
			){
		try {
			System.out.println(name);
//			System.out.println(dmm.getDonationName());
			LocalDate today = LocalDate.now();
			dmm.setDate(today);
			_dRepo.save(dmm);
			
			return "redirect:/admin/donation";
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "admin/Donationpages/index";
	}
	
	@RequestMapping("/admin/donation/delete")
	public String delete(@RequestParam("delid")String id) {
		
		Optional<DonationMasterModel> data = _dRepo.findById(id);
		System.out.println(id);
		if(data.isPresent()) {
			System.out.println("enter inside if");
			DonationMasterModel ddata = data.get();
			_dRepo.delete(ddata);
		}
		return"redirect:/admin/donation";
	}
}
