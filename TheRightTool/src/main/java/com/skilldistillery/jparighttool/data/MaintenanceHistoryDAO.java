package com.skilldistillery.jparighttool.data;

import java.util.List;

import com.skilldistillery.jparighttool.entities.MaintenanceHistory;

public interface MaintenanceHistoryDAO {
	MaintenanceHistory findById(int parkId);
	List<MaintenanceHistory> findAll();
	MaintenanceHistory addMaintenanceHistory(MaintenanceHistory history);
	MaintenanceHistory updateMaintenanceHistory(MaintenanceHistory history); 
}
