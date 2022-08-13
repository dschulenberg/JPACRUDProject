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

class MaintenanceHistoryTest {
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
		 mh = em.find(MaintenanceHistory.class,1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		mh = null;
	}

	@Test
	void test_Film_entity_basic_mappings(){
		assertNotNull(mh);
		assertEquals("Lauda",mh.getMachineName());
	}

}
