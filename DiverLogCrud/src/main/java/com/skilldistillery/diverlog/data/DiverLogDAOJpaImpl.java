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
	public List<Dive> findFilteredDives(Integer id, String location, String state, String country, String keyword,
			Integer rating) {
	
			String query = new StringBuilder("SELECT d FROM Dive d WHERE 1=1")
					.append(id == null ? "": "AND id="+id)
					.append((location == null || location == "")? "" : "AND location LIKE '%" + location + "%'")
					.append((state == null || state == "")? "" : "AND stateProvince LIKE '%" + state + "%'")
					.append((country == null || country == "")? "" : "AND country LIKE '%" + country + "%'")
					.append((keyword == null || keyword == "")? "" : "AND notes LIKE '%" + keyword + "%'")
					.append((rating == null) ? "" : "AND rating=" + rating)
					.toString();	
	
		
		return em.createQuery(query, Dive.class).getResultList();
	}

	@Override
	public Dive createLog(Dive dive) {
		em.persist(dive);
		return dive;
	}

	@Override
	public boolean deleteLog(Dive dive) {
		Dive managedDive; 
		
		try {
			managedDive = em.find(Dive.class, dive.getId());
			em.remove(managedDive);	
		} catch (Throwable e) {
			System.err.println(e);
			return false;
		}
		
		boolean deleteSuccessful = ! em.contains(managedDive);
		
		return deleteSuccessful;
	}

	@Override
	public Dive updateLog(Dive dive) {
		Dive managedDive = em.find(Dive.class, dive.getId());
		
		managedDive.setDate(dive.getDate());
		managedDive.setTime(dive.getTime());
		managedDive.setDuration(dive.getDuration());
		managedDive.setMaxDepth(dive.getMaxDepth());
		managedDive.setWaterTemp(dive.getWaterTemp());
		managedDive.setStartPressure(dive.getStartPressure());
		managedDive.setEndPressure(dive.getEndPressure());
		managedDive.setOxygen(dive.getOxygen());
		managedDive.setLocation(dive.getLocation());
		managedDive.setStateProvince(dive.getStateProvince());
		managedDive.setCountry(dive.getCountry());
		managedDive.setLatitude(dive.getLatitude());
		managedDive.setLongitude(dive.getLongitude());
		managedDive.setSuit(dive.getSuit());
		managedDive.setRating(dive.getRating());
		managedDive.setVisibility(dive.getVisibility());
		managedDive.setNotes(dive.getNotes());
		managedDive.setWeight(dive.getWeight());

		return managedDive;
	}


	

}