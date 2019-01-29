package com.tranza.ecommerce.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tranza.ecommerce.dao.OrdersDAO;
import com.tranza.ecommerce.model.Orders;

@Repository("ordersDAO")
@Transactional
public class OrdersDAOImpl implements OrdersDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addOrders(Orders orders) {
		try {
			sessionFactory.getCurrentSession().persist(orders);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateOrders(Orders orders) {
		try {
			sessionFactory.getCurrentSession().update(orders);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteOrders(Orders orders) {
		try {
			sessionFactory.getCurrentSession().delete(orders);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public List<Orders> listAllOrders() {
		return sessionFactory.getCurrentSession()
				.createQuery("FROM Ordrs" , Orders.class)
					.getResultList();
	}

	@Override
	public Orders getOrdersById(int ordersId ){
		
		return sessionFactory.getCurrentSession().get(Orders.class, Integer.valueOf(ordersId));
		
	}

	

	@Override
	public List<Orders> getOrdersByUser(int userId) {
		
		String selectOrderByUser = "SELECT Orders WHERE userId = :userId";
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectOrderByUser, Orders.class)
						.setParameter("userId",userId)
							.getResultList();
	}

}
