package creatica_theater_hub.Model;

import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDate;

import org.springframework.data.annotation.Id;

@Document("DonationMasterModel")
public class DonationMasterModel {
	@Id
	private String id;
	private String DonationName;
	private String DonationEmail;
	private Integer Amount;
	private String PaymentMethod;
	private String PaymentStatus;
	private LocalDate Date;
	private String phone;
	private String transactionId;
	
	
// COUNSTRUCTOR	
public DonationMasterModel() {
		super();
		// TODO Auto-generated constructor stub
	}



public DonationMasterModel(String id, String donationName, String donationEmail, Integer amount,
			String paymentMethod, String paymentStatus, LocalDate date, String phone, String transactionId) {
		super();
		this.id = id;
		this.DonationName = donationName;
		this.DonationEmail = donationEmail;
		this.Amount = amount;
		this.PaymentMethod = paymentMethod;
		this.PaymentStatus = paymentStatus;
		this.Date = date;
		this.phone = phone;
		this.transactionId = transactionId;
	}

		
	
	//GETTER and SETTER
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDonationName() {
		return DonationName;
	}
	public void setDonationName(String donationName) {
		this.DonationName = donationName;
	}
	public String getDonationEmail() {
		return DonationEmail;
	}
	public void setDonationEmail(String donationEmail) {
		DonationEmail = donationEmail;
	}
	public Integer getAmount() {
		return Amount;
	}
	public void setAmount(Integer amount) {
		Amount = amount;
	}
	public String getPaymentMethod() {
		return PaymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		PaymentMethod = paymentMethod;
	}
	public String getPaymentStatus() {
		return PaymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		PaymentStatus = paymentStatus;
	}
	public LocalDate getDate() {
		return Date;
	}
	public void setDate(LocalDate date) {
		Date = date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
}
