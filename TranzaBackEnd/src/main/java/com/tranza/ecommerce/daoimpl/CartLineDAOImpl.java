package com.tranza.ecommerce.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tranza.ecommerce.dao.CartLineDAO;
import com.tranza.ecommerce.model.Cart;
import com.tranza.ecommerce.model.CartLine;

@Repository("cartLineDAO")
@Transactional
public class CartLineDAOImpl implements CartLineDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	

	@Override
	public List<CartLine> CartLineList(int cartId) {
		String query = "FROM CartLine WHERE cartId = :cartId";
		return sessionFactory.getCurrentSession()
								.createQuery(query, CartLine.class)
									.setParameter("cartId", cartId)
									.getResultList(); 
	}

	@Override
	public CartLine getCartLineById(int cartLineId) {
		return sessionFactory.getCurrentSession().get(CartLine.class, Integer.valueOf(cartLineId));
	}

	@Override
	public boolean addCartLine(CartLine cartLine) {
		try {
			sessionFactory.getCurrentSession().persist(cartLine);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
}
	}

	@Override
	public boolean updateCartLine(CartLine cartLine) {
		try {
			sessionFactory.getCurrentSession().update(cartLine);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
}
	}

	@Override
	public boolean removeCartLine(CartLine cartLine) {
		try {			
			sessionFactory.getCurrentSession().delete(cartLine);
			return true;
		}catch(Exception ex) {
			return false;
} 
	}

	@Override
	public CartLine getByCartAndProduct(int cartId, int productId) {
		//cartLineId can be productId
		String query = "FROM CartLine WHERE cartId = :cartId AND product.cartLineId = :productId";
		try {
			
			return sessionFactory.getCurrentSession()
									.createQuery(query,CartLine.class)
										.setParameter("cartId", cartId)
										.setParameter("productId", productId)
											.getSingleResult();
			
		}catch(Exception ex) {
			return null;	
		}
	}

	@Override
	public boolean updateCart(Cart cart) {
		try {			
			sessionFactory.getCurrentSession().update(cart);			
			return true;
		}
		catch(Exception ex) {
			return false;
		}
	}

	@Override
	public List<CartLine> listAvailable(int cartId) {
		String query = "FROM CartLine WHERE cartId = :cartId AND available = :available";
		return sessionFactory.getCurrentSession()
								.createQuery(query, CartLine.class)
									.setParameter("cartId", cartId)
									.setParameter("available", true)
									.getResultList();
	}

}
