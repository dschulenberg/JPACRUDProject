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
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(history);
		em.flush();
		em.getTransaction().commit();
		return history;
	}
//	public void updateMaintenanceHistory() {
//		EntityManager em = emf.createEntityManager();
//		List<Customer> customers = null;
//		//select * from customer where email IS NULL OR email ='';
//		String query = "select c from Customer c  WHERE c.email IS NULL OR email =''";
//		customers = em.createQuery(query, Customer.class).getResultList();
//		for(Customer each: customers) {
//			em.getTransaction().begin();
//			each.setEmail(each.getFirstName()+"."+each.getLastName()+"sdcustomer.org");
//			em.getTransaction().commit();
//		}
//
//		em.close();
//		}
	public MaintenanceHistory updateMaintenanceHistory(MaintenanceHistory history) {
		em = emf.createEntityManager();
		em.getTransaction().begin();
		history.setMachineName(history.getMachineName());
		history.setEmployeeName(history.getEmployeeName());
		history.setDescription(history.getDescription());
		history.setRepair(history.getRepair());
		history.setComponent(history.getComponent());
		history.setHoursWorked(history.getHoursWorked());
		history.setRepairCost(history.getRepairCost());
		history.setMachineUrl(history.getMachineUrl());
		em.getTransaction().commit();
		return history;
	}
}
