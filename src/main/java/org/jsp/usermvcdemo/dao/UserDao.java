package org.jsp.usermvcdemo.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.jsp.usermvcdemo.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class UserDao {
	@Autowired
	private EntityManager entityManager;

	public User SaveUser(User u) {
		EntityTransaction t= entityManager.getTransaction();
		entityManager.persist(u);
		t.begin();
		t.commit();
		return u;
	}
	
	
	public User UpdateUser(User u) {
		User dbuser=entityManager.find(User.class, u.getId());
		EntityTransaction t=entityManager.getTransaction();
		if(dbuser !=null) {
			dbuser.setGender(u.getGender());
			dbuser.setEmail(u.getEmail());
			dbuser.setName(u.getName());
			dbuser.setPhone(u.getPhone());
			dbuser.setPassword(u.getPassword());
			t.begin();
			t.commit();
			return u;
			
		}
		return null;
	}
	public User findById(int id) {
		return entityManager.find(User.class, id);
	}
	public boolean DeletUser(int id) {
		User u=entityManager.find(User.class, id);
		if(u!=null) {
			
			EntityTransaction t= entityManager.getTransaction();
			entityManager.remove(u);
			t.begin();
			t.commit();
			return true;
		}
		return false;
	}
	public User VerifyUser(long phone,String password) {
	Query q=entityManager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
	q.setParameter(1, phone);
	q.setParameter(2, password);
	try {
		return (User) q.getSingleResult();
	} catch (NoResultException e) {
		return null;
	}
	}
	
	public User VerifyUser(String email,String password) {
		Query q=entityManager.createQuery("select u from User u where u.email=?1 and u.password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		try {
			return (User) q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
		
		}
	
	public User VerifyUser(int id,String password) {
		Query q=entityManager.createQuery("select u from User u where u.id=?1 and u.password=?2");
		q.setParameter(1, id);
		q.setParameter(2, password);
		try {
			return (User) q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
		}

}
