package com.sdp.artgallery.service;

import java.util.List;

import com.sdp.artgallery.model.Product;

public interface ProductService 
{
	public String AddProduct(Product product);
	   public List<Product> ViewAllProducts();
	   public Product ViewProductByID(int productid);
	   public void DeleteProductByID(int productid);
	   
	   public List<Product> viewallproductsbycategory(String category);
	
	
	
}
