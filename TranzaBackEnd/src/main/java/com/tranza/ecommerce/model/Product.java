package com.tranza.ecommerce.model;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
@Table(name="product")
public class Product {

	//REMAINING ANNOTATIONS CAN BE ADDED
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="product_id")
	private int productId;
	
	@NotBlank(message = "Please enter the product name")
	private String productName;
	
	@NotBlank(message = "Please enter the product description")
	@Column(name="product_description")
	private String productDescription;
	
	@Column(name="supplier_id")
	private String supplierId;
	
	//Quantity can be zero
	private double quantity;
	
	@Column(name="unit_price")
	@Min(value = 1 , message = "Price cannot be less than one(1)!")
	private double unitPrice;
	
	@Column(name="unit_weight")
	private double unitWeight;
	
	@Column(name="unit_in_stock")
	private double unitInStock;
	
	@Column(name="unit_in_order")
	private int unitInOrder;
	
	private double discount;
	
	@Column(name="product_image")
	private String productImage;
	
	@Column(name="is_active")
	private Boolean iSactive = true;
	
	@Column(name="prod_code")
	private String prodCode;
	
	@NotBlank(message = "Please enter the product Brand")
	private String brand;
	
	@Column(name="category_id")
	private int categoryId;

	private int purchase = 0;
	private int views = 0;
	
	@Transient
	private MultipartFile file;
	
	
	
	// Add more fields
	
	public MultipartFile getFile() {
		return file;
	}


	public void setFile(MultipartFile file) {
		this.file = file;
	}


	//Default constructor to generate unique product code ID
	public Product()
	{
		this.prodCode = "PRD" + UUID.randomUUID().toString().substring(26).toUpperCase();
		//this.product_id = "PROD" + UUID.randomUUID().toString().substring(36).toUpperCase();
	}


	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductDescription() {
		return productDescription;
	}


	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}


	public String getSupplierId() {
		return supplierId;
	}


	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}


	public double getQuantity() {
		return quantity;
	}


	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}


	public double getUnitPrice() {
		return unitPrice;
	}


	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}


	public double getUnitWeight() {
		return unitWeight;
	}


	public void setUnitWeight(double unitWeight) {
		this.unitWeight = unitWeight;
	}


	public double getUnitInStock() {
		return unitInStock;
	}


	public void setUnitInStock(double unitInStock) {
		this.unitInStock = unitInStock;
	}


	public int getUnitInOrder() {
		return unitInOrder;
	}


	public void setUnitInOrder(int unitInOrder) {
		this.unitInOrder = unitInOrder;
	}


	public double getDiscount() {
		return discount;
	}


	public void setDiscount(double discount) {
		this.discount = discount;
	}


	public String getPriductImage() {
		return productImage;
	}


	public void setPriductImage(String productImage) {
		this.productImage = productImage;
	}


	public Boolean getiSactive() {
		return iSactive;
	}


	public void setiSactive(Boolean iSactive) {
		this.iSactive = iSactive;
	}


	public String getProdCode() {
		return prodCode;
	}


	public void setProdCode(String prodCode) {
		this.prodCode = prodCode;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public int getCategoryId() {
		return categoryId;
	}


	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}


	public int getPurchase() {
		return purchase;
	}


	public void setPurchase(int purchase) {
		this.purchase = purchase;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", productDescription="
				+ productDescription + ", supplierId=" + supplierId + ", quantity=" + quantity + ", unitPrice="
				+ unitPrice + ", unitWeight=" + unitWeight + ", unitInStock=" + unitInStock + ", unitInOrder="
				+ unitInOrder + ", discount=" + discount + ", productImage=" + productImage + ", iSactive=" + iSactive
				+ ", prodCode=" + prodCode + ", brand=" + brand + ", categoryId=" + categoryId + ", purchase="
				+ purchase + ", views=" + views + ", file=" + file + "]";
	}
	
	
	
}
