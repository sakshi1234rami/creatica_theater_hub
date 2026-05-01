package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cretatica_theater_hub.Repositries.StudentRepository;
import cretatica_theater_hub.Repositries.VolunteerRepositry;
import creatica_theater_hub.Model.StudentMasterModel;
import creatica_theater_hub.Model.VolunteerMasterModel;

import java.util.Map;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

@Controller
public class UserRegisterationController {

	@Autowired
	private StudentRepository _studentRepo;

	@Autowired
	private VolunteerRepositry _volunteerRepo;

	@RequestMapping("/user/registration")
	public String Registration() {
		return "user/userRegistration";
	}

	@RequestMapping(value = "/user/registrationPost", method = org.springframework.web.bind.annotation.RequestMethod.POST)
	public String registerPost(@RequestParam Map<String, String> params) {
		String type = params.get("userType");
		
		try {
			if ("student".equalsIgnoreCase(type)) {
				StudentMasterModel smm = new StudentMasterModel();
				smm.setBIName(params.get("firstName") + " " + params.get("lastName"));
				smm.setBIEmail(params.get("email"));
				smm.setLCUsername(params.get("email"));
				smm.setBIPhoneNo(params.get("phone"));
				smm.setLCPassword(params.get("password"));
				
				if (params.get("dob") != null && !params.get("dob").isEmpty()) {
					try {
						smm.setBIDOB(LocalDate.parse(params.get("dob")));
					} catch(DateTimeParseException e) {}
				}
				smm.setBIGender(params.get("gender"));
				smm.setPDProgram(params.get("interest"));
				
				String address = params.getOrDefault("street", "") + ", " + 
								params.getOrDefault("city", "") + ", " + 
								params.getOrDefault("pin", "");
				smm.setBIAddress(address);
				smm.setPDStatus("Active");
				_studentRepo.save(smm);
			} else if ("volunteer".equalsIgnoreCase(type)) {
				VolunteerMasterModel vmm = new VolunteerMasterModel();
				vmm.setVolName(params.get("firstName") + " " + params.get("lastName"));
				vmm.setVolPhone(params.get("phone"));
				// There's no Email or Password in VolunteerMasterModel by default, we just save what we can
				vmm.setVolSkill(params.get("expertise"));
				vmm.setVolProgram(params.get("profession"));
				vmm.setStatus("Active");
				_volunteerRepo.save(vmm);
			}
			return "redirect:/user/login";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/user/registration";
	}
}
