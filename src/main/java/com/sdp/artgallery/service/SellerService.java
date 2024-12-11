package com.sdp.artgallery.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sdp.artgallery.model.Admin;
import com.sdp.artgallery.model.Customer;
import com.sdp.artgallery.model.Seller;


public interface SellerService {

	String AddSeller(Seller seller);
	public Seller checkSellerlogin(String sellerusername, String sellerpassword);
	public long productcount(); 
	
}
