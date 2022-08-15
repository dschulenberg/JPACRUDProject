package com.skilldistillery.jparighttool.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;


class MaintenanceHistorysTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private MaintenanceHistory mh;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		  emf = Persistence.createEntityManagerFactory("JPARightTool");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		 em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		mh = null;
	}
	@Test
	void test_maintenancehistory_find_by_id(){
		mh = em.find(MaintenanceHistory.class, 1);
		assertNotNull(mh);
		assertEquals("UN-NEF-0000-490-2U66",mh.getMachineName());
	}


}
