package creatica_theater_hub.Model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class AdminMasterModel {
	@Id
	private String admId;
	private String admName;
	private String admEmail;
	private String admPassword;
	
	
	public AdminMasterModel() {
		super();
		// TODO Auto-generated constructor stub
	}



	public AdminMasterModel(String admId, String admName, String admEmail, String admPassword) {
		super();
		this.admId = admId;
		this.admName = admName;
		this.admEmail = admEmail;
		this.admPassword = admPassword;
	}



	public String getAdmId() {
		return admId;
	}



	public void setAdmId(String admId) {
		this.admId = admId;
	}



	public String getAdmName() {
		return admName;
	}



	public void setAdmName(String admName) {
		this.admName = admName;
	}



	public String getAdmEmail() {
		return admEmail;
	}



	public void setAdmEmail(String admEmail) {
		this.admEmail = admEmail;
	}



	public String getAdmPassword() {
		return admPassword;
	}



	public void setAdmPassword(String admPassword) {
		this.admPassword = admPassword;
	}
	
	
	
	
}
