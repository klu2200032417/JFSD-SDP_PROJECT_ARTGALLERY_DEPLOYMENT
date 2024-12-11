package com.sdp.artgallery.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;

import com.sdp.artgallery.model.Customer;
import com.sdp.artgallery.repository.AdminRepository;
import com.sdp.artgallery.repository.CustomerRepository;

import jakarta.transaction.Transactional;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	

	@Override
	public String addcustomer(Customer c) 
	{
		customerRepository.save(c);
		return "Registration completed";
	}

	@Override
	  @Transactional 
	  @Modifying
	  public String updatecustomer(Customer c) 
	  {
	       
	    Customer cus = customerRepository.findById(c.getId()).get();
	    cus.setName(c.getName());
	    cus.setPassword(c.getPassword());
	    
	    return "Updated Successfully";
	  } 

	@Override
	public Customer customerbyid(int cid)
	{
		
		Optional<Customer> o= customerRepository.findById(cid);
		if(o.isPresent())
		{
			Customer customer= o.get();
			return customer;
		}
		else
		{
			return null;
		}
	}

	@Override
	public Customer checkcustomerlogin(String email, String password)
	{
		return customerRepository.checkcustomerlogin(email, password);
	}
	

}
