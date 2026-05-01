package creatica_theater_hub.Model;

import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDate;


import org.springframework.data.annotation.Id;

@Document("studentMasterModel")
public class StudentMasterModel {
	@Id
	private String id;
	private String BIName;
	private String BIEmail;
	private String BIPhoneNo; 
	private String BIGender; 
	private LocalDate   BIDOB; 
	private String BIImage;
	private String BIAddress;
	private String PDProgram;
	private String PDTimeSlot;
	private LocalDate PDStartdate;
	private String PDStatus;
	private String LCUsername;
	private String LCPassword;
	private String Paymentstatus;
	private Integer Amount;
	private String PaymentMode;
	
	
	// Super Constructor
	
	public StudentMasterModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public StudentMasterModel(String id, String bIName, String bIEmail, String bIPhoneNo, String bIGender, LocalDate bIDOB,
			String bIImage, String bIAddress, String pDProgram, String pDTimeSlot, LocalDate pDStartdate, String pDStatus,
			String lCUsername, String lCPassword, String paymentstatus, Integer amount, String paymentMode) {
		super();
		this.id = id;
		this.BIName = bIName;
		this.BIEmail = bIEmail;
		this.BIPhoneNo = bIPhoneNo;
		this.BIGender = bIGender;
		this.BIDOB = bIDOB;
		this.BIImage = bIImage;
		this.BIAddress = bIAddress;
		this.PDProgram = pDProgram;
		this.PDTimeSlot = pDTimeSlot;
		this.PDStartdate = pDStartdate;
		this.PDStatus = pDStatus;
		this.LCUsername = lCUsername;
		this.LCPassword = lCPassword;
		this.Paymentstatus = paymentstatus;
		this.Amount = amount;
		this.PaymentMode = paymentMode;
	}

//GETTER and SETTER

	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getBIName() {
		return BIName;
	}



	public void setBIName(String bIName) {
		BIName = bIName;
	}



	public String getBIEmail() {
		return BIEmail;
	}



	public void setBIEmail(String bIEmail) {
		BIEmail = bIEmail;
	}



	public String getBIPhoneNo() {
		return BIPhoneNo;
	}



	public void setBIPhoneNo(String bIPhoneNo) {
		BIPhoneNo = bIPhoneNo;
	}



	public String getBIGender() {
		return BIGender;
	}



	public void setBIGender(String bIGender) {
		BIGender = bIGender;
	}



	public LocalDate getBIDOB() {
		return BIDOB;
	}



	public void setBIDOB(LocalDate bIDOB) {
		BIDOB = bIDOB;
	}



	public String getBIImage() {
		return BIImage;
	}



	public void setBIImage(String bIImage) {
		BIImage = bIImage;
	}



	public String getBIAddress() {
		return BIAddress;
	}



	public void setBIAddress(String bIAddress) {
		BIAddress = bIAddress;
	}



	public String getPDProgram() {
		return PDProgram;
	}



	public void setPDProgram(String pDProgram) {
		PDProgram = pDProgram;
	}



	public String getPDTimeSlot() {
		return PDTimeSlot;
	}



	public void setPDTimeSlot(String pDTimeSlot) {
		PDTimeSlot = pDTimeSlot;
	}



	public LocalDate getPDStartdate() {
		return PDStartdate;
	}



	public void setPDStartdate(LocalDate pDStartdate) {
		PDStartdate = pDStartdate;
	}



	public String getPDStatus() {
		return PDStatus;
	}



	public void setPDStatus(String pDStatus) {
		PDStatus = pDStatus;
	}



	public String getLCUsername() {
		return LCUsername;
	}



	public void setLCUsername(String lCUsername) {
		LCUsername = lCUsername;
	}



	public String getLCPassword() {
		return LCPassword;
	}



	public void setLCPassword(String lCPassword) {
		LCPassword = lCPassword;
	}



	public String getPaymentstatus() {
		return Paymentstatus;
	}



	public void setPaymentstatus(String paymentstatus) {
		Paymentstatus = paymentstatus;
	}



	public Integer getAmount() {
		return Amount;
	}



	public void setAmount(Integer amount) {
		Amount = amount;
	}



	public String getPaymentMode() {
		return PaymentMode;
	}



	public void setPaymentMode(String paymentMode) {
		PaymentMode = paymentMode;
	}
	

	
	
	
}
