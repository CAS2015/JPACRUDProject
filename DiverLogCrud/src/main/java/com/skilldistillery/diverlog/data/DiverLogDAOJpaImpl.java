package com.skilldistillery.diverlog.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.diverlog.entities.Dive;

@Service
@Transactional
public class DiverLogDAOJpaImpl implements DiverLogDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Dive findById(int id) {
		return em.find(Dive.class, id);
	}

	@Override
	public List<Dive> findAll() {
		return em.createQuery("SELECT d FROM Dive d", Dive.class).getResultList();
	}

	@Override
	public List<Dive> findFilteredDives(Integer id, String location, String country, String keyword,
			Integer rating) {
	
			String query = new StringBuilder("SELECT d FROM Dive d WHERE 1=1")
					.append(id == null ? "": "AND id="+id)
					.append((location == null || location == "")? "" : "AND location LIKE '%" + location + "%'")
					.append((country == null || country == "")? "" : "AND country LIKE '%" + country + "%'")
					.append((keyword == null || keyword == "")? "" : "AND notes LIKE '%" + keyword + "%'")
					.append((rating == null) ? "" : "AND rating=" + rating)
					.toString();	
	
		
		return em.createQuery(query, Dive.class).getResultList();
	}


	

}
