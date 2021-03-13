package com.skilldistillery.diverlog.data;

import java.util.List;

import com.skilldistillery.diverlog.entities.Dive;

public interface DiverLogDAO {
	
	Dive findById(int id);
	List<Dive> findAll();
	List<Dive> findFilteredDives(Integer id, String location, String country, String keyword, Integer rating );
	
	//TODO Add aggregate functions (number of dives per location, average rating of dives)
}
