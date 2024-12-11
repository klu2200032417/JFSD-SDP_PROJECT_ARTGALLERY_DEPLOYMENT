package com.sdp.artgallery.controller;

//import java.awt.PageAttributes.MediaType;
import org.springframework.http.MediaType;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sdp.artgallery.model.Admin;
import com.sdp.artgallery.model.Contact;
import com.sdp.artgallery.model.Customer;
import com.sdp.artgallery.model.Product;
import com.sdp.artgallery.model.Seller;
import com.sdp.artgallery.service.AdminService;
import com.sdp.artgallery.service.CustomerService;
import com.sdp.artgallery.service.EmailService;
import com.sdp.artgallery.service.ProductService;
import com.sdp.artgallery.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private SellerService sellerService;

	@Autowired
	private ProductService productService;
	@GetMapping("/")
	public String showMainPage()
	{
        return "index"; 
    }
	
	 
	@GetMapping("/login")
	public ModelAndView showloginPage()
	{
       ModelAndView mv= new ModelAndView();
       mv.setViewName("login");
       return mv;
    }
	@GetMapping("/map")
	public ModelAndView map()
	{
       ModelAndView mv= new ModelAndView();
       mv.setViewName("map");
       return mv;
    }
	
	@GetMapping("/admindashboard")
	public ModelAndView admindashboard()
	{
       ModelAndView mv= new ModelAndView();
       mv.setViewName("admindashboard");
       return mv;
    }
	@GetMapping("/paymentsuccess")
	public ModelAndView paymentsuccess()
	{
       ModelAndView mv= new ModelAndView();
       mv.setViewName("paymentsuccess");
       return mv;
    }
	@GetMapping("/payment")
	public ModelAndView payment()
	{
       ModelAndView mv= new ModelAndView();
       mv.setViewName("payment");
       return mv;
    }
	
	@GetMapping("/aboutus")
	public String aboutus()
	{
        return "aboutus"; 
    }
	
	@GetMapping("/customerhome")
	  public ModelAndView customerhome(HttpServletRequest request)
	  {
	    HttpSession session = request.getSession();
	    int cid =(int) session.getAttribute("cid"); 
	    String cname =(String) session.getAttribute("cname"); 
	        ModelAndView mv = new ModelAndView();
	      mv.setViewName("customerhome");
	      mv.addObject("cid",cid);
	      mv.addObject("cname", cname);
	      return mv;
	  }
	
	@GetMapping("/userhomepaintings")
	public String userhomepaintings()
	{
        return "userhomepaintings"; 
    }
	@GetMapping("/userhomephotography")
	public String userhomephotography()
	{
        return "userhomephotography"; 
    }
	@GetMapping("/userhomedrawings")
	public String userhomedrawings()
	{
        return "userhomedrawings"; 
    }
	
	
	@GetMapping("/registration")
	public ModelAndView registration()
	{
        ModelAndView mv= new ModelAndView();
        mv.setViewName("registration");
        return mv;
    }
	@GetMapping("/AbstractDrawing")
	public String abstractdrawing()
	{
        return "AbstractDrawing"; 
    }
	@GetMapping("/abstractpainting")
	public String abstractpainting()
	{
        return "abstractpainting"; 
    }
	@GetMapping("/realismpaintings")
	public String realismpaintings()
	{
        return "realismpaintings"; 
    }
	@GetMapping("/fineartdrawing")
	public String fineartdrawing()
	{
        return "fineartdrawing"; 
    }
	@GetMapping("/ImpressionismPaintings")
	public String ImpressionismPaintings()
	{
        return "ImpressionismPaintings"; 
    }
	@GetMapping("/sellerhome")
	public ModelAndView sellerhome()
	{
        ModelAndView mv= new ModelAndView();
        mv.setViewName("sellerhome");
        return mv;
        
    }
	@GetMapping("/documentaryphotography")
	public String documentaryphotography()
	{
        return "documentaryphotography"; 
    }
	@GetMapping("/grafittidrawings")
	public String grafittidrawings()
	{
        return "grafittidrawings"; 
    }
	@GetMapping("/adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminlogin");
        return mv;
    }
	@GetMapping("/sellerlogin")
	public ModelAndView sellerlogin()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("sellerlogin");
        return mv;
    }
	@GetMapping("/abstractphotography")
	public String abstractphotography()
	{
        return "abstractphotography"; 
    }
	@GetMapping("/conceptualphotography")
	public String conceptualphotography()
	{
        return "conceptualphotography"; 
    }

	@GetMapping("/photography")
	public String photography()
	{
        return "photography"; 
    }
	@GetMapping("/drawings")
	public String drawings()
	{
        return "drawings"; 
    }
	@GetMapping("/paintings")
	public String paintings()
	{
        return "paintings"; 
    }
	@GetMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	
	@PostMapping("/contactus")
	public ModelAndView contactus(HttpServletRequest request)
	{
		String msg="null";
		ModelAndView mv= new ModelAndView("contactus");
		try
		{
			String name = request.getParameter("name");
			String username = request.getParameter("email");
			String message = request.getParameter("message");

			Contact contact= new Contact();
			contact.setName(name);
			contact.setUsername(username);
			contact.setMessage(message);
		
			msg="Email Sent";
			emailService.sendEmail(name,"Demo mail","Hi we are testing");
    		mv.setViewName("contactus");
    		mv.addObject("message", msg);
			
			
		}
		catch(Exception e)
    	{
    		
    		msg="Failed to Send Email!";
    		mv.setViewName("contactus");
    		mv.addObject("message", msg);
    	}
		
		return mv;
    }
	
	
    @PostMapping("insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request )
	{
    	String msg="null";
    	ModelAndView mv= new ModelAndView();
    	try
    	{
    		String name=request.getParameter("name");
    		String gender=request.getParameter("gender");
    		String email=request.getParameter("email");
    		String password=request.getParameter("password");
    		
    		
    		Customer customer=new Customer();
    		customer.setName(name);
    		customer.setGender(gender);
    		customer.setEmail(email);
    		customer.setPassword(password);
    		
    		
    		msg=customerService.addcustomer(customer);
    		
			emailService.sendEmail(customer.getName(),"Demo mail","Hi we are testing");
    		mv.setViewName("registration");
    		mv.addObject("message", msg);
    		
    	}
    	catch(Exception e)
    	{
    		msg=e.getMessage();
    		mv.setViewName("registration");
    		mv.addObject("message", msg);
    	}
    	mv.setViewName("registration");
    	return mv;
	}
    @GetMapping("viewcustomers")
    public ModelAndView viewcustomers()
    {
    	List<Customer> customerlist= adminService.viewallcustomers();
    	
    	ModelAndView mv= new ModelAndView("viewcustomers");
    	mv.addObject("customerlist", customerlist);
    	return mv;
    }
    @GetMapping("deletecustomers")
    public ModelAndView deletecustomers()
    {
    	List<Customer> customerlist= adminService.viewallcustomers();
    	
    	ModelAndView mv= new ModelAndView("deletecustomers");
    	mv.addObject("customerlist", customerlist);
    	return mv;
    }
    @PostMapping("checkcustomerlogin")
    public ModelAndView checkcustomerlogin(HttpServletRequest request)
    {
    	HttpSession session = request.getSession();
    	ModelAndView mv= new ModelAndView();
    	String email= request.getParameter("email");
    	String password= request.getParameter("password");
    	Customer customer= customerService.checkcustomerlogin(email, password);
    	if(customer!=null)
    	{
    		mv.setViewName("customerhome");
    		session.setAttribute("cname", customer.getName());
            session.setAttribute("cid", customer.getId());
    	}
    	else
    	{
    		mv.setViewName("login");
    		mv.addObject("message", "Login Failed");
    	}
    	return mv;
    	
    }
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request)
    {
    	ModelAndView mv= new ModelAndView();
    	String adminusername= request.getParameter("adminusername");
    	String adminpassword= request.getParameter("adminpassword");
    	Admin admin= adminService.checkadminlogin(adminusername, adminpassword);
    	  if(admin!=null)
  	    {
  	    	 long ccount=adminService.customercount();
  			 
  	      mv.setViewName("admindashboard");
  	      
  	      mv.addObject("ccount", ccount);
  	      
  	    }
  	    else
  	    {
  	      mv.setViewName("adminlogin");
  	      mv.addObject("message", "Login Failed");
  	    }
  	    
  	    return mv;
    	
    }
    
   @GetMapping("delete/{id}")
   public String deleteaction(@PathVariable("id") int cid)
   {
	   adminService.deletecustomer(cid);
	   return "redirect:/viewcustomers";
   }
   @GetMapping("deletecustomer")
   public ModelAndView deletecustomerdemo()
   {
	   ModelAndView mv= new ModelAndView();
	   mv.setViewName("deletecustomers");
	   List<Customer> customerlist= adminService.viewallcustomers();
	   mv.addObject("customerlist", customerlist);
   	return mv;
	   
   }
   @GetMapping("customerlogout")
	  public ModelAndView customerlogout()
	  {
		  ModelAndView mv= new ModelAndView();
		  mv.setViewName("customerlogin");
		  mv.addObject("message", "Logout Succesfull");
		  return mv;
	  }
   @GetMapping("/cpaintings")
	public String cpaintings()
	{
       return "cpaintings"; 
   }
   @GetMapping("/cabstractpainting")
	public String cabstractpainting()
	{
      return "cabstractpainting"; 
  }
   @GetMapping("/crealism")
	public String crealism()
	{
     return "crealism"; 
 }
   @GetMapping("/cimpressionismpaintings")
 	public String cimpressionismpaintings()
 	{
      return "cimpressionismpaintings"; 
  }
   @GetMapping("addseller")
   public ModelAndView addsellerdemo()
   {
	   ModelAndView mv = new ModelAndView("addseller");
	   return mv;
   }
   @PostMapping("insertseller")
   public ModelAndView insertsellerdemo(HttpServletRequest request)
   {
	   String msg = null;
	   
	   ModelAndView mv = new ModelAndView();
	   
	   try
	   {
	   String username = request.getParameter("username");
	   String name = request.getParameter("name");
	   
	   String password = request.getParameter("password");
	  
	   
	   
		
		  
		  Seller s = new Seller();
		
		 
		  s.setUsername(username);
		  s.setName(name);
		  s.setPassword(password);
		  
		  
		  msg=sellerService.AddSeller(s);
		
		  mv.setViewName("addseller");
		  mv.addObject("message",msg);
	   }	  
	   catch(Exception e)
	   {
		   msg = e.getMessage();
		  
		   mv.setViewName("addseller");
		   mv.addObject("message",msg);
	   }
	   return mv;
   }
   @GetMapping("viewsellers")
   public ModelAndView viewsellers()
   {
   	List<Seller> sellerslist= adminService.viewallsellers();
   	
   	ModelAndView mv= new ModelAndView("viewsellers");
   	mv.addObject("sellerslist", sellerslist);
   	return mv;
   }
   @PostMapping("checksellerlogin")
   public ModelAndView checksellerlogin(HttpServletRequest request)
   {
   	ModelAndView mv= new ModelAndView();
   	String sellerusername= request.getParameter("sellerusername");
   	String sellerpassword= request.getParameter("sellerpassword");
   	Seller seller= sellerService.checkSellerlogin(sellerusername, sellerpassword);
   	  if(seller!=null)
 	    {
 	    	 long ccount=sellerService.productcount();
 			 
 	      mv.setViewName("sellerhome");
 	      
 	      mv.addObject("ccount", ccount);
 	      
 	    }
 	    else
 	    {
 	      mv.setViewName("sellerlogin");
 	      mv.addObject("message", "Login Failed");
 	    }
 	    
 	    return mv;
   	
   }
   
   @GetMapping("addproduct")
   public ModelAndView addproductdemo()
   {
	   ModelAndView mv = new ModelAndView("addproduct");
	   return mv;
   }
   @PostMapping("insertproduct")
   public ModelAndView insertproductdemo(HttpServletRequest request,@RequestParam("productimage") MultipartFile file) throws IOException, SerialException, SQLException
   {
	   String msg = null;
	   
	   ModelAndView mv = new ModelAndView();
	   
	   try
	   {
	   String category = request.getParameter("category");
	   String name = request.getParameter("name");
	   String description = request.getParameter("description");
	   Double cost = Double.valueOf(request.getParameter("cost"));
	   String productlink = request.getParameter("productlink");
	   
		  byte[] bytes = file.getBytes();
		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		  
		  Product p = new Product();
		  p.setCategory(category);
		  p.setName(name);
		  p.setDescription(description);
		  p.setCost(cost);
		  p.setProductlink(productlink);
		  p.setProductimage(blob);
		  
		  msg=productService.AddProduct(p);
		  System.out.println(msg);
		  mv.setViewName("addproduct");
		  mv.addObject("message",msg);
	   }	  
	   catch(Exception e)
	   {
		   msg = e.getMessage();
		   System.out.println(msg.toString());
		   mv.setViewName("addproduct");
		   mv.addObject("message",msg);
	   }
	   return mv;
   }
   @GetMapping("viewproductsbycategory")
   public ModelAndView  viewproductsbycategorydemo()
   {
        ModelAndView mv=new ModelAndView("viewproductsbycategory");
        return mv;
   }
   @GetMapping("viewallprods")
   public ModelAndView viewallprodsdemo()
   {
	   List<Product> productlist = productService.ViewAllProducts();
	   
	   ModelAndView mv = new ModelAndView("viewallproducts");
	   
	   mv.addObject("productlist", productlist);
	   
	   return mv;
   }
   @GetMapping("displayprodimage")
   public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
   {
     Product product =  productService.ViewProductByID(id);
     byte [] imageBytes = null;
     imageBytes = product.getProductimage().getBytes(1,(int) product.getProductimage().length());

     return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
   }
   
   @GetMapping("updateprofile")
   public ModelAndView updateemp(HttpServletRequest request)
   {
     ModelAndView mv = new ModelAndView("updateprofile");
     
     HttpSession session = request.getSession();
     
     mv.setViewName("updateprofile");
     
     mv.addObject("cid", session.getAttribute("cid"));
     mv.addObject("cname", session.getAttribute("cname"));
     
     int id = (int) session.getAttribute("cid");
     
     Customer cus = customerService.customerbyid(id);
     
     mv.addObject("cus", cus);
     
     return mv;
   }
  
  @PostMapping("update")
  public ModelAndView updatemp(HttpServletRequest request)
  {
    String msg = null;
     
     ModelAndView mv = new ModelAndView("updateprofile");
     
      HttpSession session = request.getSession();
       
       mv.addObject("cid", session.getAttribute("cid"));
     mv.addObject("cname", session.getAttribute("cname"));
       
    int id = (int) session.getAttribute("cid");
    try
    {
      String name = request.getParameter("name");
     
      String pwd = request.getParameter("pwd");
      
      Customer cus = new Customer();
      cus.setId(id);
      cus.setName(name);
     
      cus.setPassword(pwd);
      
      msg = customerService.updatecustomer(cus);
         
         mv.setViewName("login");
         mv.addObject("message",msg);
      
    }
    catch (Exception e)
    {
      msg = e.getMessage();
        
        mv.setViewName("updateerror");
        mv.addObject("message",msg);
   }
    return mv;
  }
}
