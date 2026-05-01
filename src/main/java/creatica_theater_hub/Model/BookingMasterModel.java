package creatica_theater_hub.Model;

import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDate;

import org.springframework.data.annotation.Id;

@Document("BookingMaster")
public class BookingMasterModel {

	@Id
	private String id;
	private String programId;
	private String programName;
	private String programCategory;
	private String userName;
	private String userEmail;
	private String userPhone;
	private String preferredBatch;
	private LocalDate bookingDate;
	private String status;
	private Integer amount;
	private String paymentMode;
	private String notes;

	public BookingMasterModel() {
		super();
	}

	public BookingMasterModel(String id, String programId, String programName, String programCategory,
			String userName, String userEmail, String userPhone, String preferredBatch,
			LocalDate bookingDate, String status, Integer amount, String paymentMode, String notes) {
		super();
		this.id = id;
		this.programId = programId;
		this.programName = programName;
		this.programCategory = programCategory;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.preferredBatch = preferredBatch;
		this.bookingDate = bookingDate;
		this.status = status;
		this.amount = amount;
		this.paymentMode = paymentMode;
		this.notes = notes;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProgramId() {
		return programId;
	}

	public void setProgramId(String programId) {
		this.programId = programId;
	}

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public String getProgramCategory() {
		return programCategory;
	}

	public void setProgramCategory(String programCategory) {
		this.programCategory = programCategory;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getPreferredBatch() {
		return preferredBatch;
	}

	public void setPreferredBatch(String preferredBatch) {
		this.preferredBatch = preferredBatch;
	}

	public LocalDate getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(LocalDate bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
}
