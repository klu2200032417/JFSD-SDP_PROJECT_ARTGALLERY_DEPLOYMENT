package com.sdp.artgallery.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.artgallery.model.Admin;
import com.sdp.artgallery.model.Customer;
import com.sdp.artgallery.model.Seller;
import com.sdp.artgallery.repository.AdminRepository;
import com.sdp.artgallery.repository.CustomerRepository;
import com.sdp.artgallery.repository.SellerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private SellerRepository sellerRepository;
	

	@Override
	public List<Customer> viewallcustomers()
	{
		
		return customerRepository.findAll();
	}

	@Override
	public String deletecustomer(int cid) 
	{
		
Optional<Customer> obj= customerRepository.findById(cid);
		
		String msg=null;
		if(obj.isPresent())
		{
			Customer c=obj.get();
			customerRepository.delete(c);
			msg="Customer deleted";
		}
		else
		{
			msg="Customer  not found";
		}
		return msg;
	}

	@Override
	public Admin checkadminlogin(String adminusername, String adminpassword)
	{
		return adminRepository.checkadminlogin(adminusername, adminpassword);
	}

	@Override
	public long customercount() {
		return customerRepository.count();
	}

	@Override
	public List<Seller> viewallsellers() {
		return sellerRepository.findAll();
	}

}
