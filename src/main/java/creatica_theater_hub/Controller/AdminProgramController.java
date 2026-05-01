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

import creatica_theater_hub.Model.ProgramMasterModel;
import cretatica_theater_hub.Repositries.ProgramRepository;
import jakarta.servlet.ServletContext;


@Controller
public class AdminProgramController {
	
	@Autowired
	private ProgramRepository _pr;
	
	@Autowired
	private ServletContext _servletContext;
	
	@RequestMapping("/admin/program")
	public String index(Model model) {
		
		List<ProgramMasterModel> programData = _pr.findAll();
		System.out.println(programData.size());
		model.addAttribute("programs", programData);
		return "admin/Programpages/index";
	}
	
	@RequestMapping("/admin/programPost")
	public String indexPost(
			@ModelAttribute("ProgramMasterModel") ProgramMasterModel pmm,
			@RequestParam("photo") MultipartFile cat
			
			) {
		try {
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
			System.out.println(fpath);
			System.out.println(pmm.getBDName());
			_pr.save(pmm);
			return "redirect:/admin/program";
		} catch (Exception e) {
			// TODO: handle exception
		} 
		return "admin/Programpages/index";
	}
	
	
	/**
	 * @param pmm
	 * @param cat
	 * @param pId
	 * @return
	 */
	/**
	 * @param pmm
	 * @param cat
	 * @param pId
	 * @return
	 */
	@RequestMapping("/admin/program/edit")
	public String editPost(
			@ModelAttribute("ProgramMasterModel") ProgramMasterModel pmm,
			@RequestParam("photo") MultipartFile cat,
			@RequestParam("pId") String pId
			
			) {
		try {
			Optional<ProgramMasterModel> pdata = _pr.findById(pId);
			System.out.println("Step edit 1");
			System.out.println(pId);
			System.out.println(pdata.isPresent());
			System.out.println(pdata.isEmpty());
			if(pdata.isPresent())
			{
				System.out.println("Step edit 2");
				ProgramMasterModel data = pdata.get();
				data.setBDName(pmm.getBDName());
				data.setBDCategory(pmm.getBDCategory());
				data.setBDDescription(pmm.getBDDescription());
				data.setBDMonths(pmm.getBDMonths());
				data.setBDLevel(pmm.getBDLevel());
				data.setTIName(pmm.getTIName());
				data.setTIImage(pmm.getTIImage());
				data.setTIBio(pmm.getTIBio());
				data.setSDSatrtdate(pmm.getSDSatrtdate());
				data.setSDEnddate(pmm.getSDEnddate());
				data.setSDTimeslote(pmm.getSDTimeslote());
				data.setLocation(pmm.getLocation());
				data.setCourseType(pmm.getCourseType());
				data.setAmount(pmm.getAmount());
				data.setMaxstudent(pmm.getMaxstudent());
				data.setStatus(pmm.getStatus());
				data.setCertificate(pmm.isCertificate());
				
				if(!cat.isEmpty())
				{
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
					data.setTIImage(fileName);
				}
				System.out.println("Step edit 3");
				_pr.save(data);
				System.out.println("Step edit 4");
			}
			
			
			
			return "redirect:/admin/program";
		} catch (Exception e) {
			// TODO: handle exception
		} 
		return "admin/Programpages/index";
	}
	
	@RequestMapping("/admin/program/delete")
	public String delete(@RequestParam("delid") String id) {
		Optional<ProgramMasterModel> data = _pr.findById(id);
		if(data.isPresent()) {
			ProgramMasterModel ddata = data.get();
			_pr.delete(ddata);
		}
		return"redirect:/admin/program";
	}
	
	
}

