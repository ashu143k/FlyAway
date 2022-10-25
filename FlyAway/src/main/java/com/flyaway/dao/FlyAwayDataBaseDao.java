package com.flyaway.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

import com.flyaway.bean.AdminDetails;
import com.flyaway.bean.AirLineDetails;
import com.flyaway.bean.CitiesDetails;
import com.flyaway.bean.FlightDetails;

public class FlyAwayDataBaseDao {
	private SessionFactory factory;
	FlightDetails flight = null;

	public FlyAwayDataBaseDao() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		factory = meta.getSessionFactoryBuilder().build();
	}

	@SuppressWarnings("unchecked")
	public List<FlightDetails> searchFlights(String sourceCity, String destinationCity, String date ) {
		List<FlightDetails> flights = null;
		Session session = factory.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = session.createCriteria(FlightDetails.class);
		Criterion dateName = Restrictions.ilike("date", date);
		Criterion sourceName = Restrictions.ilike("sourceName", sourceCity);
		Criterion destinationName = Restrictions.ilike("destinationName", destinationCity);
		LogicalExpression andExp = Restrictions.and(sourceName, destinationName);
		LogicalExpression andExp1 = Restrictions.and(andExp, dateName);
		
		cr.add(andExp1);
		flights = cr.list();
		session.close();
		return flights;
	}

	public boolean ValidateUser(String username, String password) {
		boolean flag;
		Session session = factory.openSession();
		@SuppressWarnings("deprecation")
		Criteria cr = session.createCriteria(AdminDetails.class);
		Criterion sourceName = Restrictions.ilike("userEmail", username);
		Criterion destinationName = Restrictions.ilike("password", password);
		LogicalExpression andExpression = Restrictions.and(sourceName, destinationName);
		cr.add(andExpression);
		if(cr.uniqueResult()!=null)
		{
			 flag= true;
		}else {
			 flag= false;
		}
		session.close();
		return flag ;
	}

	public List<FlightDetails> getAllFlights() {
		List<FlightDetails> flights = null;
		Session session = factory.openSession();
		String hql = "FROM FlightDetails";
		TypedQuery<FlightDetails> query = session.createQuery(hql);
		flights = query.getResultList();
		session.close();
		return flights;
	}

	public String updatePassword(String oldPassword, String newPassword ,String username) {
		String success;
		AdminDetails changePassword = null;
		Session session = factory.openSession();
		session.beginTransaction();
		Criteria cr = session.createCriteria(AdminDetails.class);
		Criterion checkoldPassword = Restrictions.ilike("password", oldPassword);
		cr.add(checkoldPassword);
		if(cr.uniqueResult()!=null) {
			Query q=session.createQuery("update AdminDetails set password=:password where userEmail=:userEmail");  
			q.setParameter("password",newPassword);  
			q.setParameter("userEmail",username);  
			q.executeUpdate(); 	
		       session.getTransaction().commit();

			success="Password Changed";
		}
		else {
			success="Incorrect Old Password";
		}
		session.close();
		return success;
	}

	public List<CitiesDetails> getAllCities() {
		List<CitiesDetails> cities = null;
		Session session = factory.openSession();
		String hql = "FROM CitiesDetails";
		@SuppressWarnings("unchecked")
		TypedQuery<CitiesDetails> query = session.createQuery(hql);
		cities = query.getResultList();
		session.close();
		return cities;
	}

	public List<AirLineDetails> getAllAirlines() {
		List<AirLineDetails> airlines = null;
		Session session = factory.openSession();
		String hql = "FROM AirLineDetails";
		@SuppressWarnings("unchecked")
		TypedQuery<AirLineDetails> query = session.createQuery(hql);
		airlines = query.getResultList();
		session.close();
		return airlines;
	}

	public Integer addNewFlight(FlightDetails addFlight ) {
		Integer flightId = null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		flightId = (Integer) session.save(addFlight);
		txn.commit();
		session.close();
		return flightId;
	}

	public Integer deleteFlight(Integer flightId) {
		Integer FlightDeleted ;
		try {
		FlightDetails deleteFlight = new FlightDetails();
		deleteFlight.setId(flightId);
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(deleteFlight);
		transaction.commit();
		FlightDeleted = 1;
		}catch (Exception ex) {
			FlightDeleted=0;
			ex.printStackTrace();
		}
		return FlightDeleted;
	}

	public Integer addAirLine(AirLineDetails addNewAirLine) {
		Integer airLineId = null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		airLineId = (Integer) session.save(addNewAirLine);
		txn.commit();
		session.close();
		return airLineId;
	}

}