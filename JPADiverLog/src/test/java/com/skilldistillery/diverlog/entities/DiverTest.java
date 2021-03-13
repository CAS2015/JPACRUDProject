package com.skilldistillery.diverlog.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.time.Month;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class DiverTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Dive log;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("DiverLog");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		log = em.find(Dive.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		log = null;
	}

	@Test
	@DisplayName ("Test string entity mappings of DiveLog")
	void test() {
		assertNotNull(log);
		assertEquals("Dutch Springs", log.getLocation());
		assertEquals("Pennsylvania", log.getStateProvince());
		assertEquals("United States", log.getCountry());
		assertEquals("7 mm full plus hood gloves boots", log.getSuit());
	}
	
	//2018-07-28 | 10:12:00 
	@Test
	@DisplayName ("Test temporal entity mappings of DiveLog")
	void test1() {
		assertNotNull(log);
		assertEquals(2018 , log.getDate().getYear());
		assertEquals(Month.JULY, log.getDate().getMonth());
		assertEquals(28, log.getDate().getDayOfMonth());
		assertEquals(10, log.getTime().getHour());
		assertEquals(12, log.getTime().getMinute());
	}
	
	// 12 |         15 |            200 |           76 |   21     40.6860 |  -75.3539
	@Test
	@DisplayName ("Test numeric entity mappings of DiveLog")
	void test2() {
		assertNotNull(log);
		assertEquals(12, log.getMaxDepth());
		assertEquals(15, log.getWaterTemp());
		assertEquals(200, log.getStartPressure());
		assertEquals(76, log.getEndPressure());
		assertEquals(21, log.getOxygen());
		assertEquals(40.6860, log.getLatitude());
		assertEquals(-75.3539, log.getLongitude());
		
	}

}
