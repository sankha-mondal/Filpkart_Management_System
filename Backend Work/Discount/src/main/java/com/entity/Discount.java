package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Table(name = "discount")
@Entity
public class Discount {

	@Id
	@Column(name="id")
	private String id;
	@Column(name="status")
	private Long status;
	@Column(name="d_percentage")
	private Long d_percentage;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getStatus() {
		return status;
	}
	public void setStatus(Long status) {
		this.status = status;
	}
	public Long getD_percentage() {
		return d_percentage;
	}
	public void setD_percentage(Long d_percentage) {
		this.d_percentage = d_percentage;
	}
	
	
	

}