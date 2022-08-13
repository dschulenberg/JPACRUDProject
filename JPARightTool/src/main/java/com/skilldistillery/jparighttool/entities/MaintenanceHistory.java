package com.skilldistillery.jparighttool.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="maintenance_history")
public class MaintenanceHistory {
	@Id  
	@GeneratedValue( strategy =GenerationType.IDENTITY)
	private int id;
	
	@Column(name="machine_name")
	private String machineName;
	
	@Column(name="employee_name")
	private String employeeName;
	
	@Column(name="description")	
	private String description;
	
	@Column(name="repair")
	private String repair;
	
	@Column(name="component")
	private String component;
	
	@Column(name="hours_worked")
	private Integer hoursWorked;
	
	@Column(name="repair_cost")
	private Double repairCost;
	
	@Column(name="date_created")
	private LocalDateTime dateCreated;
	
	@Column(name="last_updated")
	private LocalDateTime lastUpdated;
	
	@Column(name="machine_url")
	private String machineUrl;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMachineName() {
		return machineName;
	}

	public void setMachineName(String machineName) {
		this.machineName = machineName;
	}

	

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRepair() {
		return repair;
	}

	public void setRepair(String repair) {
		this.repair = repair;
	}

	public String getComponent() {
		return component;
	}

	public void setComponent(String component) {
		this.component = component;
	}

	public Integer getHoursWorked() {
		return hoursWorked;
	}

	public void setHoursWorked(Integer hoursWorked) {
		this.hoursWorked = hoursWorked;
	}

	public Double getRepairCost() {
		return repairCost;
	}

	public void setRepairCost(Double repairCost) {
		this.repairCost = repairCost;
	}

	public LocalDateTime getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(LocalDateTime dateCreated) {
		this.dateCreated = dateCreated;
	}

	public LocalDateTime getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(LocalDateTime lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public String getMachineUrl() {
		return machineUrl;
	}

	public void setMachineUrl(String machineUrl) {
		this.machineUrl = machineUrl;
	}

	

	@Override
	public String toString() {
		return "MaintenanceHistory [id=" + id + ", machineName=" + machineName + ", employeeName=" + employeeName
				+ ", description=" + description + ", repair=" + repair + ", component=" + component + ", hoursWorked="
				+ hoursWorked + ", repairCost=" + repairCost + ", dateCreated=" + dateCreated + ", lastUpdated="
				+ lastUpdated + ", machineUrl=" + machineUrl + "]";
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public MaintenanceHistory() {
		super();
	}

	public MaintenanceHistory(String machineName, String employeeName, String description, String repair,
			String component, Integer hoursWorked, Double repairCost, String machineUrl) {
		super();
		this.machineName = machineName;
		this.employeeName = employeeName;
		this.description = description;
		this.repair = repair;
		this.component = component;
		this.hoursWorked = hoursWorked;
		this.repairCost = repairCost;
		this.machineUrl = machineUrl;
	}
	
	
}
