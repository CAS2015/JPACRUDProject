package com.skilldistillery.diverlog.entities;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.Size;

@Entity
public class Dive {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@PastOrPresent(message="Can't have a date in the future")
	private LocalDate date;
	
	private LocalTime time;
	
	@PositiveOrZero(message="Can't have a negative dive duration")
	private int duration;
	
	@PositiveOrZero(message="Can't have a negative max depth")
	@Column(name="max_depth")
	private int maxDepth;
	
	@Column(name="water_temp")
	private Integer waterTemp;
	
	@PositiveOrZero(message="Can't have a negative starting cylinder pressure")
	@Column(name="start_pressure")
	private int startPressure;
	
	@PositiveOrZero(message="Can't have a negative ending cylinder pressure")
	@Column(name="end_pressure")
	private int endPressure;
	
	@PositiveOrZero(message="Can't have a negative oxygent percent")
	@Column(name="oxygen_percent")
	private Integer oxygen;
	
	private String location;

	@Column(name="state_province")
	private String stateProvince;
	
	private String country;
	
	private Double latitude;
	
	private Double longitude;
	
	private String suit;
	
	@Min(value = 1, message = "Rating can't be less than 1")
	@Max(value = 5, message = "Rating can't be over 5")
	private Integer rating;
	
	@Min(value = 1, message = "Rating can't be less than 1")
	@Max(value = 5, message = "Rating can't be over 5")
	private Integer visibility;
	
	@Size(max = 255, message = "Size limit of 255 characters")
	private String notes;
	
	private Integer weight;
	
	public Dive() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getMaxDepth() {
		return maxDepth;
	}

	public void setMaxDepth(int maxDepth) {
		this.maxDepth = maxDepth;
	}

	public Integer getWaterTemp() {
		return waterTemp;
	}

	public void setWaterTemp(Integer waterTemp) {
		this.waterTemp = waterTemp;
	}

	public int getStartPressure() {
		return startPressure;
	}

	public void setStartPressure(int startPressure) {
		this.startPressure = startPressure;
	}

	public int getEndPressure() {
		return endPressure;
	}

	public void setEndPressure(int endPressure) {
		this.endPressure = endPressure;
	}

	public Integer getOxygen() {
		return oxygen;
	}

	public void setOxygen(Integer oxygen) {
		this.oxygen = oxygen;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStateProvince() {
		return stateProvince;
	}

	public void setStateProvince(String stateProvince) {
		this.stateProvince = stateProvince;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getSuit() {
		return suit;
	}

	public void setSuit(String suit) {
		this.suit = suit;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public Integer getVisibility() {
		return visibility;
	}

	public void setVisibility(Integer visibility) {
		this.visibility = visibility;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DiveLog [id=").append(id).append(", date=").append(date).append(", time=").append(time)
				.append(", duration=").append(duration).append(", maxDepth=").append(maxDepth).append(", waterTemp=")
				.append(waterTemp).append(", startPressure=").append(startPressure).append(", endPressure=")
				.append(endPressure).append(", oxygen=").append(oxygen).append(", location=").append(location)
				.append(", stateProvince=").append(stateProvince).append(", country=").append(country)
				.append(", latitude=").append(latitude).append(", longitude=").append(longitude).append(", suit=")
				.append(suit).append(", rating=").append(rating).append(", visibility=").append(visibility)
				.append(", notes=").append(notes).append(", weight=").append(weight).append("]");
		return builder.toString();
	}


	
	
	
}
