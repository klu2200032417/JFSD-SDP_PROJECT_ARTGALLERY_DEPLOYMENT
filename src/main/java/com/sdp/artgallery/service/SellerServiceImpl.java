package com.sdp.artgallery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.artgallery.model.Seller;
import com.sdp.artgallery.repository.ProductRepository;
import com.sdp.artgallery.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService
{
	@Autowired
	private SellerRepository sellerRepository;

	@Autowired
	private ProductRepository productRepository;

	@Override
	public String AddSeller(Seller seller) {
		sellerRepository.save(seller);
		return "Seller Added Successfully";
	}


	@Override
	public Seller checkSellerlogin(String sellerusername, String sellerpassword) 
	{
		
		return sellerRepository.checkSellerlogin(sellerusername, sellerpassword);
	}


	@Override
	public long productcount() 
	{
		return productRepository.count();		
	}


	
}
