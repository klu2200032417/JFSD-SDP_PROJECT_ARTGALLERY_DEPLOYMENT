package com.sdp.artgallery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.sdp.artgallery.model.Admin;
import com.sdp.artgallery.model.Seller;

public interface SellerRepository extends JpaRepository<Seller, Integer>
{
	@Query("select s from Seller s where username=?1 and password=?2")
	public Seller checkSellerlogin(String sellerusername, String sellerpassword);
}
