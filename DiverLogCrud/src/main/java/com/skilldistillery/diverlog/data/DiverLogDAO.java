package com.skilldistillery.diverlog.data;

import java.util.List;

import com.skilldistillery.diverlog.entities.DiveLog;

public interface DiverLogDAO {
	
	DiveLog findById(int id);
	List<DiveLog> findAll();
}
