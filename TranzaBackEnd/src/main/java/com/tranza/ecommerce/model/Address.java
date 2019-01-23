package com.tranza.ecommerce.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;



@Entity
@Table(name="address")
public class Address implements Serializable{

	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="address_id")
	private int addressId;
	
	@NotBlank(message = "Entrez votre address!")
	@Column(name = "address_line_one")
	private String addressLineOne;
	
	@NotBlank(message = "Entrez votre addres")	
	@Column(name = "address_line_two")
	private String addressLineTwo;
	
	@NotBlank(message = "Entrez votre ville!")	
	private String city;
	
	@NotBlank(message = "Entrez votre District ou Etat!")	
	private String state;
	
	@NotBlank(message = "Entrez votre Pays!")	
	private String country;
	
	@Column(name ="postal_code")
	@NotBlank(message = "Entrez le Code Postal du pay!")	
	private String postalCode;
	
	@Column(name="is_shipping")
	private boolean shipping;
	
	@Column(name="is_billing")
	private boolean billing;
	
	@Column(name = "user_id")
	private int userId;
	
	//Add more fields

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public String getAddressLineOne() {
		return addressLineOne;
	}

	public void setAddressLineOne(String addressLineOne) {
		this.addressLineOne = addressLineOne;
	}

	public String getAddressLineTwo() {
		return addressLineTwo;
	}

	public void setAddressLineTwo(String addressLineTwo) {
		this.addressLineTwo = addressLineTwo;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public boolean isShipping() {
		return shipping;
	}

	public void setShipping(boolean shipping) {
		this.shipping = shipping;
	}

	public boolean isBilling() {
		return billing;
	}

	public void setBilling(boolean billing) {
		this.billing = billing;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", addressLineOne=" + addressLineOne + ", addressLineTwo="
				+ addressLineTwo + ", city=" + city + ", state=" + state + ", country=" + country + ", postalCode="
				+ postalCode + ", shipping=" + shipping + ", billing=" + billing + ", userId=" + userId + "]";
	}
	
	
}
