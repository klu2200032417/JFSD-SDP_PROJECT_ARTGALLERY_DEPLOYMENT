package com.sdp.artgallery.service;

import com.sdp.artgallery.model.Customer;

public interface CustomerService
{
	public String addcustomer(Customer c);
	public String updatecustomer(Customer c);
	public Customer customerbyid(int cid);

	
	public Customer checkcustomerlogin(String email,String password);
}
