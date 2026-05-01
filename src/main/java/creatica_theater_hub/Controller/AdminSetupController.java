package creatica_theater_hub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import creatica_theater_hub.Model.AdminMasterModel;
import cretatica_theater_hub.Repositries.AdminMasterRepositry;

@Controller
public class AdminSetupController {

    @Autowired
    private AdminMasterRepositry adminRepo;

    @GetMapping("/setup-admin")
    @ResponseBody
    public String setupAdmin() {
        if (adminRepo.count() == 0) {
            AdminMasterModel admin = new AdminMasterModel();
            admin.setAdmName("admin");
            admin.setAdmEmail("admin@theatre.com");
            admin.setAdmPassword("admin123");
            adminRepo.save(admin);
            return "Default admin created: Username: admin, Password: admin123";
        } else {
            return "Admin already exists in database.";
        }
    }
}
