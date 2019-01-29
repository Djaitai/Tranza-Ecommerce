package com.tranza.ecommerce.model;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
@Table(name = "category")
public class Category implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id //Primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="category_id")
	private int categoryId;
	
	@Column(name="cat_description")
	private String catDescription;
	
	@Column(name="cat_image")
	private String catImage;
	
	@Column(name="cat_name")
	private String catName;
	
	@Column(name="cat_active")
	private boolean isActive;
	
	private String categoryCode;

	@Transient
	private MultipartFile file;
	
	
	//Default constructor to generate unique product code ID
		public Category()
		{
			this.categoryCode = "CAT" + UUID.randomUUID().toString().substring(26).toUpperCase();
			//this.product_id = "PROD" + UUID.randomUUID().toString().substring(36).toUpperCase();
		}
	


	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCatDescription() {
		return catDescription;
	}

	public void setCatDescription(String catDescription) {
		this.catDescription = catDescription;
	}

	public String getCatImage() {
		return catImage;
	}

	public void setCatImage(String catImage) {
		this.catImage = catImage;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", catDescription=" + catDescription + ", catImage=" + catImage
				+ ", catName=" + catName + ", isActive=" + isActive + ", file=" + file + "]";
	}

	

	
	
	
 

}
