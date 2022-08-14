package com.skilldistillery.jparighttool.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jparighttool.entities.MaintenanceHistory;

@Service
@Transactional
public class MaintenanceHistoryDAOImpl implements MaintenanceHistoryDAO {

	@PersistenceContext
	private EntityManager em;
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPARightTool");
	
	@Override
	public MaintenanceHistory findById(int parkId) {
		
		return em.find(MaintenanceHistory.class, parkId);
	
	}
	public List<MaintenanceHistory> findAll(){
		String query = "SELECT mh FROM MaintenanceHistory mh";
		return em.createQuery(query, MaintenanceHistory.class).getResultList();
	}
	public MaintenanceHistory addMaintenanceHistory(MaintenanceHistory history){
		em.persist(history);
		em.flush();
		return history;
	}

	public MaintenanceHistory updateMaintenanceHistory(MaintenanceHistory history) {
		MaintenanceHistory org =findById(history.getId());
		org.setMachineName(history.getMachineName());
		org.setEmployeeName(history.getEmployeeName());
		org.setDescription(history.getDescription());
		org.setRepair(history.getRepair());
		org.setComponent(history.getComponent());
		org.setHoursWorked(history.getHoursWorked());
		org.setRepairCost(history.getRepairCost());
		org.setMachineUrl(history.getMachineUrl());
		return history;
	}
	public boolean deleteMaintenanceHistory(MaintenanceHistory history) {
		boolean removed = false;
		em.remove(history);
		removed = ! em.contains(history);
		return removed;
	}
	public List<MaintenanceHistory> searchAll(String keyword){
		keyword = "%" + keyword + "%";

		String sql = "SELECT mh FROM MaintenanceHistory mh WHERE mh.machineName LIKE :keyword OR mh.employeeName LIKE :keyword OR mh.description LIKE :keyword OR mh.repair LIKE :keyword OR mh.component LIKE :keyword";


		String query = "SELECT mh FROM MaintenanceHistory mh";
		return em.createQuery(sql, MaintenanceHistory.class).setParameter("keyword", keyword).getResultList();
	}
}
