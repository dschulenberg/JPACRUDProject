package com.skilldistillery.jparighttool;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jparighttool.data.MaintenanceHistoryDAOImpl;
import com.skilldistillery.jparighttool.entities.MaintenanceHistory;

class MaintenanceHistoryTest {
	private MaintenanceHistoryDAOImpl dao;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
		dao = new MaintenanceHistoryDAOImpl();
	}

	@AfterEach
	void tearDown() throws Exception {
		dao=null;
	}

	@Test
	void test_maintenancehistory_find_by_id(){
		MaintenanceHistory mh = dao.findById(5);
		assertNotNull(mh);
		assertEquals("UN-NEF-0000-490-2U66",mh.getMachineName());
	}
	
	@Test
	void test_maintenancehistory_find_all(){
		List<MaintenanceHistory> list = dao.findAll();
		assertNotNull(list);
		assertEquals(20,list.size());
	}
	
	@Test
	void test_maintenancehistory_add(){
		MaintenanceHistory mh  = new MaintenanceHistory("Name","Employee");
		mh=dao.addMaintenanceHistory(mh);
		mh = dao.findById(21);
		assertNotNull(mh);
		assertEquals("Employee",mh.getEmployeeName());
	}
	@Test
	void test_maintenancehistory_update(){
		MaintenanceHistory mh  = new MaintenanceHistory(20,"Name","Employee");
		mh=dao.updateMaintenanceHistory(mh);
		mh = dao.findById(20);
		assertNotNull(mh);
		assertEquals("Employee",mh.getEmployeeName());
	}
	@Test
	void test_maintenancehistory_delete(){
		MaintenanceHistory mh  = dao.findById(21);
		dao.deleteMaintenanceHistory(mh);	
		assertTrue(dao.deleteMaintenanceHistory(mh));
	}

}
