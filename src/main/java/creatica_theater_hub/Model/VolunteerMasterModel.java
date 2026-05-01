package creatica_theater_hub.Model;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.annotation.Id;

@Document("volunteerMasterModel")
public class VolunteerMasterModel {
	
	@Id
	private String id;
	private String VolName;
	private String VolPhone;
	private String VolSkill;
	private String VolProgram;
	private String Status;
	
	

	public VolunteerMasterModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	public VolunteerMasterModel(String id, String volName, String volPhone, String volSkill, String volProgram,
			String status) {
		super();
		this.id = id;
		this.VolName = volName;
		this.VolPhone = volPhone;
		this.VolSkill = volSkill;
		this.VolProgram = volProgram;
		this.Status = status;
	}
	// getter and setter
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getVolName() {
		return VolName;
	}
	public void setVolName(String volName) {
		VolName = volName;
	}
	public String getVolPhone() {
		return VolPhone;
	}
	public void setVolPhone(String volPhone) {
		VolPhone = volPhone;
	}
	public String getVolSkill() {
		return VolSkill;
	}
	public void setVolSkill(String volSkill) {
		VolSkill = volSkill;
	}
	public String getVolProgram() {
		return VolProgram;
	}
	public void setVolProgram(String volProgram) {
		VolProgram = volProgram;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
	
}
