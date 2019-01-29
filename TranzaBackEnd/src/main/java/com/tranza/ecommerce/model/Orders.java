package com.tranza.ecommerce.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Orders  implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="orders_id")
	private int ordersId;
	
	@ManyToOne(fetch =  FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User user;
	
	@OneToOne
	@JoinColumn(name = "is_billing")
	private Address isBillingAddress;
	
	@OneToOne
	@JoinColumn(name="is_shipping")
	private Address isShippingAddress;
	
	
	//private Cart cart; Check Later
	
	@Column(name="payment_id")
	private int paymentId;
	
	@Column(name="order_date")
	private Date ordersDate;
	
	@Column(name ="update_order_date")
	private Date updateOrderDate;
	
	@Column(name="is_active")
	private boolean isActive;
	
	@Column(name="items_count")
	private int itemsCount;
	
	@Column(name="items_quatity")
	private int itemsQuantity;
	
	@Column(name="grand_total")
	private BigDecimal grandTotal;
	
	@Column(name="base_grand_total")
	private BigDecimal baseGrandTotal;
	
	@Column(name="check_out_comment")
	private String CheckOutComment;
	
	private boolean status;
	
	@Column(name="order_number")
	private String orderNumber;
	//Random random = new Random();
	//Default constructor to generate unique product code ID
		//public Orders()
		//{
			//random.nextInt(orderNumber);
			//this.product_id = "PROD" + UUID.randomUUID().toString().substring(36).toUpperCase();
		//}
	
	//Can Add user Email Later

	
	
	

	

	public String getOrderNumber() {
		return orderNumber;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public int getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}

	/*public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}*/

	public Address getIsBillingAddress() {
		return isBillingAddress;
	}

	public void setIsBillingAddress(Address isBillingAddress) {
		this.isBillingAddress = isBillingAddress;
	}

	public Address getIsShippingAddress() {
		return isShippingAddress;
	}

	public void setIsShippingAddress(Address isShippingAddress) {
		this.isShippingAddress = isShippingAddress;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public Date getOrdersDate() {
		return ordersDate;
	}

	public void setOrdersDate(Date ordersDate) {
		this.ordersDate = ordersDate;
	}

	public Date getUpdateOrderDate() {
		return updateOrderDate;
	}

	public void setUpdateOrderDate(Date updateOrderDate) {
		this.updateOrderDate = updateOrderDate;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public int getItemsCount() {
		return itemsCount;
	}

	public void setItemsCount(int itemsCount) {
		this.itemsCount = itemsCount;
	}

	public int getItemsQuantity() {
		return itemsQuantity;
	}

	public void setItemsQuantity(int itemsQuantity) {
		this.itemsQuantity = itemsQuantity;
	}

	public BigDecimal getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(BigDecimal grandTotal) {
		this.grandTotal = grandTotal;
	}

	public BigDecimal getBaseGrandTotal() {
		return baseGrandTotal;
	}

	public void setBaseGrandTotal(BigDecimal baseGrandTotal) {
		this.baseGrandTotal = baseGrandTotal;
	}

	public String getCheckOutComment() {
		return CheckOutComment;
	}

	public void setCheckOutComment(String checkOutComment) {
		CheckOutComment = checkOutComment;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	


	

	
	

}
