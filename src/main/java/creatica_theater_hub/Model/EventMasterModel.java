package creatica_theater_hub.Model;

import java.time.LocalDate;

import org.springframework.data.mongodb.core.mapping.Document;

@Document("EventMaster")
public class EventMasterModel {
	
	private String id;
	private String EventName;
	private String EventType;
	private LocalDate EventDate;
	private String EventTime;
	private String EventLocation;
	private String Number;
	private String Budget;
	private String Description;
	private String Status;
	
	
	public EventMasterModel() {
		super();
		// TODO Auto-generated constructor stub
	}


	
	public EventMasterModel(String id, String eventName, String eventType, LocalDate eventDate, String eventTime,
			String eventLocation, String number, String budget, String description, String status) {
		super();
		this.id = id;
		EventName = eventName;
		EventType = eventType;
		EventDate = eventDate;
		EventTime = eventTime;
		EventLocation = eventLocation;
		Number = number;
		Budget = budget;
		Description = description;
		Status = status;
	}





	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getEventName() {
		return EventName;
	}


	public void setEventName(String eventName) {
		EventName = eventName;
	}


	public String getEventType() {
		return EventType;
	}


	public void setEventType(String eventType) {
		EventType = eventType;
	}


	public LocalDate getEventDate() {
		return EventDate;
	}


	public void setEventDate(LocalDate eventDate) {
		EventDate = eventDate;
	}


	public String getEventTime() {
		return EventTime;
	}


	public void setEventTime(String eventTime) {
		EventTime = eventTime;
	}


	public String getEventLocation() {
		return EventLocation;
	}


	public void setEventLocation(String eventLocation) {
		EventLocation = eventLocation;
	}


	public String getNumber() {
		return Number;
	}


	public void setNumber(String number) {
		Number = number;
	}


	public String getBudget() {
		return Budget;
	}


	public void setBudget(String budget) {
		Budget = budget;
	}


	public String getDescription() {
		return Description;
	}


	public void setDescription(String description) {
		Description = description;
	}


	public String getStatus() {
		return Status;
	}


	public void setStatus(String status) {
		Status = status;
	}
	
	
}
