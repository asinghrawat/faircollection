package com.vitalverb.faircollection.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

import org.hibernate.annotations.CreationTimestamp;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userId;
	
	@Size(min = 2, max = 45)
	@Column(name = "name", nullable = false, length = 45)
	private String name;
	
	@Size(min = 6, max = 14)
	@Column(name = "mobile", nullable = true, length = 14)
	private String mobile;
	
	@Size(min = 4, max = 50)
	@Column(name = "area", nullable = false, length = 50)
	private String area;
	

	@Size(min = 0, max = 50 )
	@Column(name = "street", nullable = false, length = 50)
	private Integer street;
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "recordDate", insertable=false)
	private Date recordDate;


	public Long getUserId() {
		return userId;
	}


	public void setUserId(Long userId) {
		this.userId = userId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public Integer getStreet() {
		return street;
	}


	public void setStreet(Integer street) {
		this.street = street;
	}


	public Date getRecordDate() {
		return recordDate;
	}


	public void setRecordDate(Date recordDate) {
		this.recordDate = recordDate;
	}
	
	
	
	
	
}
