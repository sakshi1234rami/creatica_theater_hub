package creatica_theater_hub.Model;

import org.springframework.data.mongodb.core.mapping.Document;


import java.time.LocalDate;

import org.springframework.data.annotation.*;

@Document("ProgramMaster")
public class ProgramMasterModel {
	
	@Id
	private String id;
	private String BDName;
	private String BDCategory;
	private String BDDescription;
	private String BDMonths;
	private String BDLevel;
	private String TIName;
	private String TIImage;
	private String TIBio;
	private LocalDate   SDSatrtdate;
	private LocalDate   SDEnddate;
	private String SDTimeslote;
	private String SDDays;
	private String Location;
	private String CourseType;
	private Integer Amount;
	private Integer Maxstudent;
	private String Status;
	private boolean isCertificate;
	
	

	
	public ProgramMasterModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public ProgramMasterModel(String id, String bDName, String bDCategory, String bDDescription, String bDMonths,
			String bDLevel, String tIName, String tIImage, String tIBio, LocalDate sDSatrtdate, LocalDate sDEnddate,
			String sDTimeslote, String sDDays, String location, String courseType, Integer amount, Integer maxstudent,
			String status, boolean isCertificate) {
		super();
		id = id;
		BDName = bDName;
		BDCategory = bDCategory;
		BDDescription = bDDescription;
		BDMonths = bDMonths;
		BDLevel = bDLevel;
		TIName = tIName;
		TIImage = tIImage;
		TIBio = tIBio;
		SDSatrtdate = sDSatrtdate;
		SDEnddate = sDEnddate;
		SDTimeslote = sDTimeslote;
		SDDays = sDDays;
		Location = location;
		CourseType = courseType;
		Amount = amount;
		Maxstudent = maxstudent;
		Status = status;
		this.isCertificate = isCertificate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		id = id;
	}
	public String getBDName() {
		return BDName;
	}
	public void setBDName(String bDName) {
		BDName = bDName;
	}
	public String getBDCategory() {
		return BDCategory;
	}
	public void setBDCategory(String bDCategory) {
		BDCategory = bDCategory;
	}
	public String getBDDescription() {
		return BDDescription;
	}
	public void setBDDescription(String bDDescription) {
		BDDescription = bDDescription;
	}
	public String getBDMonths() {
		return BDMonths;
	}
	public void setBDMonths(String bDMonths) {
		BDMonths = bDMonths;
	}
	public String getBDLevel() {
		return BDLevel;
	}
	public void setBDLevel(String bDLevel) {
		BDLevel = bDLevel;
	}
	public String getTIName() {
		return TIName;
	}
	public void setTIName(String tIName) {
		TIName = tIName;
	}
	public String getTIImage() {
		return TIImage;
	}
	public void setTIImage(String tIImage) {
		TIImage = tIImage;
	}
	public String getTIBio() {
		return TIBio;
	}
	public void setTIBio(String tIBio) {
		TIBio = tIBio;
	}
	public LocalDate getSDSatrtdate() {
		return SDSatrtdate;
	}
	public void setSDSatrtdate(LocalDate sDSatrtdate) {
		SDSatrtdate = sDSatrtdate;
	}
	public LocalDate getSDEnddate() {
		return SDEnddate;
	}
	public void setSDEnddate(LocalDate sDEnddate) {
		SDEnddate = sDEnddate;
	}
	public String getSDTimeslote() {
		return SDTimeslote;
	}
	public void setSDTimeslote(String sDTimeslote) {
		SDTimeslote = sDTimeslote;
	}
	public String getSDDays() {
		return SDDays;
	}
	public void setSDDays(String sDDays) {
		SDDays = sDDays;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public String getCourseType() {
		return CourseType;
	}
	public void setCourseType(String courseType) {
		CourseType = courseType;
	}
	public Integer getAmount() {
		return Amount;
	}
	public void setAmount(Integer amount) {
		Amount = amount;
	}
	public Integer getMaxstudent() {
		return Maxstudent;
	}
	public void setMaxstudent(Integer maxstudent) {
		Maxstudent = maxstudent;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public boolean isCertificate() {
		return isCertificate;
	}
	public void setCertificate(boolean isCertificate) {
		this.isCertificate = isCertificate;
	}
	



	
}
