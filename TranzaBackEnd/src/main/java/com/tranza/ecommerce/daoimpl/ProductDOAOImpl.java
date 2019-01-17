package com.tranza.ecommerce.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tranza.ecommerce.dao.ProductDAO;
import com.tranza.ecommerce.model.Product;

@Repository(value="productDAO")
@Transactional
public class ProductDOAOImpl implements ProductDAO {

	@Autowired
	private Product product;
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public boolean addProduct(Product product) {
		//logger.debug("starting save method in daoimpl");
		try {
			sessionFactory.getCurrentSession().persist(product);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Boolean updateProduct(Product product) {
		try {			
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception ex) {		
			ex.printStackTrace();			
		}	
		return null;
	}

	@Override
	public Boolean deleteProduct(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Product> listActiveProduct() {
		String selectActiveProduct = "FROM Product WHERE iSactive = :iSactive";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProduct , Product.class);
		query.setParameter("iSactive", true);
		return query.getResultList();

	}

	@Override
	public List<Product> listActiveProductByCategory(int categoryId) {
		String selectActiveProductByCategory = "FROM Product WHERE iSactive = :iSactive AND category_id = :category_id";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveProductByCategory , Product.class);
		query.setParameter("iSactive", true);
		query.setParameter("category_id", categoryId);
		return query.getResultList();
	}

	@Override
	public List<Product> getLastActiveProduct(int count) {	
		return sessionFactory.getCurrentSession()
					.createQuery("FROM Product WHERE iSactive = :iSactive ORDER BY productId" , Product.class)
						.setParameter("iSactive", true)
							.setFirstResult(0)
							.setMaxResults(count)
								.getResultList();
	}

	//Method to fetch product based on the id
	@Override
	public Product getProductById(int productId) {
		try {
			product = sessionFactory.getCurrentSession().get(Product.class, productId);
			return product;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Product> getAllProduct() {
		String productList = "FROM Product";
		Query query = sessionFactory.getCurrentSession().createQuery(productList);
		return query.getResultList();
		//OR return query.list
	}
	

}
