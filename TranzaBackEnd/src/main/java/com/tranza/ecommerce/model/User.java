package com.tranza.ecommerce.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Table(name="user")
@Component
public class User implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_id")
	private int userId;
	
	@Column(name="first_name")
	@NotBlank(message = "Entrez votre Nom!")
	private String firstName;
	
	@Column(name="last_name")
	@NotBlank(message = "Entrez votre Prenoms Nom!")
	private String lastName;
	
	@Column(name="email_id")
	@NotBlank(message = "Entrez votre Email!") 
	private String emailId;
	
	@Column(name="contact_number")
	@NotBlank(message = "Entrez votre Numero de telephone")
	private String contactNumber;
	private String role;
	
	@NotBlank(message = "Entrez votre mot de Pass")
	@Size(min = 6 , max=60 , message = "Le mot de pass doit etre entre 6 a 60 characteres" )
	private String password;
	
	@Transient
	private String confirmPassword;
	
	private boolean enabled = true;
	
	@OneToOne(mappedBy="user", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Cart cart;
	
	
	@OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
	private Set<Orders> orders;
	//private Orders orders;
	
	
	//Add more fields
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", emailId=" + emailId
				+ ", contactNumber=" + contactNumber + ", role=" + role + ", password=" + password
				+ ", confirmPassword=" + confirmPassword + ", enabled=" + enabled + ", cart=" + cart + "]";
	}
	
	
	
	/*
	 * toString for loggin and debugging activity
	 **/
	
	
}
