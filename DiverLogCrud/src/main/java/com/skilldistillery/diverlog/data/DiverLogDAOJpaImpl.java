package com.skilldistillery.diverlog.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.diverlog.entities.DiveLog;

@Service
@Transactional
public class DiverLogDAOJpaImpl implements DiverLogDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public DiveLog findById(int id) {
		return em.find(DiveLog.class, id);
	}

	@Override
	public List<DiveLog> findAll() {
		return em.createQuery("SELECT d FROM DiveLog d", DiveLog.class).getResultList();
//		return null;
	}

}
