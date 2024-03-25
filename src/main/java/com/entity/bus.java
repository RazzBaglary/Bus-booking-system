package com.entity;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="buses")
public class bus {
	@Column(name = "bus_id")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long busId;
	
	@Column(name="bus_name")
	private String busName;
	
	@Column(name = "bus_number")
	private String busNumber;
	
	@Column(name = "source")
	private String source;
	
	@Column(name = "destination")
	private String destination;
	
	@Column(name = "contact_number")
	private String contactNumber;
	
	@Column(name = "bus_type")
	private String busType;
	
	@Column(name = "seat_capacity")
	private String seatCapacity;
	
	@Column(name ="departure_time" )
	private String departureTime;
	@Column(name ="arrival_time" )
	private String arrivalTime;
	@Column(name = "mticket_support")
	private String mTicketSupport;
	@Column(name = "deepclean_buses")
	private String deepCleanedBuses;
	@Column(name = "charging_point")
	private String chargingPoint;
	@Column(name = "pillow")
	private String pillow;
	@Column(name = "usbport")
	private String usbPort;
	@Column(name = "reading_light")
	private String readingLight;
	@Column(name = "fare")
	private String fare;
	@Column(name = "pickup_point")
	private String pickupPoint;
	@Column(name = "drop_point")
	private String dropPoint;
	@Column(name = "duration")
	private String duration;
	
	public Long getBusId() {
		return busId;
	}
	public void setBusId(Long busId) {
		this.busId = busId;
	}
	public String getBusName() {
		return busName;
	}
	public void setBusName(String busName) {
		this.busName = busName;
	}
	public String getBusNumber() {
		return busNumber;
	}
	public void setBusNumber(String busNumber) {
		this.busNumber = busNumber;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getBusType() {
		return busType;
	}
	public void setBusType(String busType) {
		this.busType = busType;
	}
	public String getSeatCapacity() {
		return seatCapacity;
	}
	public void setSeatCapacity(String seatCapacity) {
		this.seatCapacity = seatCapacity;
	}
	public String getDepartureTime() {
		return departureTime;
	}
	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public String getmTicketSupport() {
		return mTicketSupport;
	}
	public void setmTicketSupport(String mTicketSupport) {
		this.mTicketSupport = mTicketSupport;
	}
	public String getDeepCleanedBuses() {
		return deepCleanedBuses;
	}
	public void setDeepCleanedBuses(String deepCleanedBuses) {
		this.deepCleanedBuses = deepCleanedBuses;
	}
	public String getChargingPoint() {
		return chargingPoint;
	}
	public void setChargingPoint(String chargingPoint) {
		this.chargingPoint = chargingPoint;
	}
	public String getPillow() {
		return pillow;
	}
	public void setPillow(String pillow) {
		this.pillow = pillow;
	}
	public String getUsbPort() {
		return usbPort;
	}
	public void setUsbPort(String usbPort) {
		this.usbPort = usbPort;
	}
	public String getReadingLight() {
		return readingLight;
	}
	public void setReadingLight(String readingLight) {
		this.readingLight = readingLight;
	}
	
	public String getFare() {
		return fare;
	}
	public void setFare(String fare) {
		this.fare = fare;
	}
	public String getPickupPoint() {
		return pickupPoint;
	}
	public void setPickupPoint(String pickupPoint) {
		this.pickupPoint = pickupPoint;
	}
	public String getDropPoint() {
		return dropPoint;
	}
	public void setDropPoint(String dropPoint) {
		this.dropPoint = dropPoint;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public bus(String busName, String busNumber, String source, String destination, String contactNumber,
			String busType, String seatCapacity, String departureTime, String arrivalTime, String mTicketSupport,
			String deepCleanedBuses, String chargingPoint, String pillow, String usbPort, String readingLight,
			String fare, String pickupPoint, String dropPoint, String duration) {
		super();
		this.busId = new Random().nextLong();
		this.busName = busName;
		this.busNumber = busNumber;
		this.source = source;
		this.destination = destination;
		this.contactNumber = contactNumber;
		this.busType = busType;
		this.seatCapacity = seatCapacity;
		this.departureTime = departureTime;
		this.arrivalTime = arrivalTime;
		this.mTicketSupport = mTicketSupport;
		this.deepCleanedBuses = deepCleanedBuses;
		this.chargingPoint = chargingPoint;
		this.pillow = pillow;
		this.usbPort = usbPort;
		this.readingLight = readingLight;
		this.fare = fare;
		this.pickupPoint = pickupPoint;
		this.dropPoint = dropPoint;
		this.duration = duration;
	}
	
	
	
	
	
	
	
	
	
}
