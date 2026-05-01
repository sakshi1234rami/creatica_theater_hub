package creatica_theater_hub.Controller;



import java.io.File;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import creatica_theater_hub.Model.StudentMasterModel;
import cretatica_theater_hub.Repositries.StudentRepository;
import jakarta.servlet.ServletContext;

@Controller
public class AdminStudentController {
	
	@Autowired
	private StudentRepository _StdRepo;
	
	@Autowired
	private ServletContext _servletContext;
	
	@RequestMapping("/admin/student")
	public String student(Model model) {
		List<StudentMasterModel> studentData = _StdRepo.findAll();
		System.out.println(studentData.size());
		model.addAttribute("student", studentData);
		return "admin/Studentpages/index";
	}

	@RequestMapping("/admin/studentPost")
	public String studentPost(
			@ModelAttribute("StudentMasterModel") StudentMasterModel smm,
			@RequestParam("photo") MultipartFile cat
			
			) {
		try {
			
		System.out.println(cat.getOriginalFilename());
    	smm.setBIImage(cat.getOriginalFilename());
			System.out.println(smm.getBIName());
			
		_StdRepo.save(smm);
			return "redirect:/admin/student";
			
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		
		
		return "admin/Studentpages/index";
	}
	
	@RequestMapping("/admin/student/edit")
	public String editPost(
			@ModelAttribute("StudentMasterModel") StudentMasterModel smm,
			@RequestParam("photo") MultipartFile cat,
			@RequestParam("sId") String sId
			
			) {
		try {
			
			Optional<StudentMasterModel> sdata = _StdRepo.findById(sId);
			System.out.println("Step student edit 1");
			System.out.println(sId);
			System.out.println(sdata.isPresent());
			System.out.println(sdata.isEmpty());
			if(sdata.isPresent()) {
				
				System.out.println("Step student edit 2");
				StudentMasterModel data = sdata.get();
				data.setBIName(smm.getBIName());
				data.setBIEmail(smm.getBIEmail());
				data.setBIPhoneNo(smm.getBIPhoneNo());
				data.setBIGender(smm.getBIGender());
				data.setBIDOB(smm.getBIDOB());
				data.setBIImage(smm.getBIImage());
				data.setBIAddress(smm.getBIAddress());
				data.setPDProgram(smm.getPDProgram());
				data.setPDTimeSlot(smm.getPDTimeSlot());
				data.setPDStartdate(smm.getPDStartdate());
				data.setPDStartdate(smm.getPDStartdate());
				data.setPDStatus(smm.getPDStatus());
				data.setLCUsername(smm.getLCUsername());
				data.setLCPassword(smm.getLCPassword());
				data.setPaymentstatus(smm.getPaymentstatus());
				data.setAmount(smm.getAmount());
				data.setPaymentMode(smm.getPaymentMode());
				
				if(!cat.isEmpty()) {
					String fileName = cat.getOriginalFilename();
					String path = _servletContext.getRealPath("/Resources/packages/");
					File directory = new File(path);
					
					
					if(!directory.exists())
					{
						directory.mkdirs();
					}
					
					String fpath = path+fileName;
					File f = new File(fpath);
					cat.transferTo(f);
					data.setBIImage(fileName);
					
				}
				System.out.println("Step student edit 3");
				_StdRepo.save(data);
				System.out.println("Step student edit 4");
			}
			
			
    	
			
		
			return "redirect:/admin/student";
			
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		
		
		return "admin/Studentpages/index";
	}
	
	@RequestMapping("/admin/student/delete")
	public String delete(@RequestParam("delid") String id) {
		Optional<StudentMasterModel> data = _StdRepo.findById(id);
		if(data.isPresent()) {
			StudentMasterModel sdata= data.get();
			_StdRepo.delete(sdata);
		}
		return "redirect:/admin/student";
	}
}
