package com.sdp.artgallery.service;

import java.util.List;

import com.sdp.artgallery.model.Admin;
import com.sdp.artgallery.model.Customer;
import com.sdp.artgallery.model.Seller;

public interface AdminService 
{
	public List<Customer> viewallcustomers();
	public String deletecustomer(int cid);
	public Admin checkadminlogin(String adminusername,String adminpassword);
	
	public long customercount();
	public List<Seller> viewallsellers();
}
