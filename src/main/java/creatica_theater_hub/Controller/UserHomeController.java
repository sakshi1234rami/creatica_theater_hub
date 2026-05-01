package creatica_theater_hub.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import creatica_theater_hub.Model.ProgramMasterModel;
import cretatica_theater_hub.Repositries.ProgramRepository;

@Controller
public class UserHomeController {
	
	
	@Autowired
	private ProgramRepository _pr;
	
	@RequestMapping("user/home")
	public String Home(Model model) {
		
		List<ProgramMasterModel> programData = _pr.findAll();
		System.out.println(programData.size());
		model.addAttribute("programs", programData);

		
		return"user/home";
	}

}
