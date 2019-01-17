package com.tranza.ecommerce.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.tranza.ecommerce.dao.CategoryDAO;
import com.tranza.ecommerce.model.Category;

@Repository(value="categoryDAO")
@Transactional
@EnableTransactionManagement
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private Category category;
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	//@Transactional
	public boolean addCategory(Category category) {
		//logger.debug("starting save method in daoimpl");
		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	// List of all categories
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Category> getAllCategory() {
		String hql = "from Category";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	
	//List of active Category
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Category> getActiveCategory() {
		String selectActiveCategory = "from Category WHERE isActive = :isActive";
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
		query.setParameter("isActive", true);
		return query.getResultList();
	}

	@Override
	public Category getCategoryById(int categoryId) {
		
		//enhanced for loop Part 03 03 video TO BE CHECKED AGAIN
		/*for(Category category : categories)
		{
			
		} */

		//logger.info("Starting getStudentByID method");
		try {
			category = sessionFactory.getCurrentSession().get(Category.class, categoryId);
			//category.setErrorCode("200");
			//category.setErrorMessage("Category  found");
			return category;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//category.setErrorCode("100");
			//category.setErrorMessage("Category not found");
			return null;
		}
	}
	
}
