package com.sdp.artgallery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.sdp.artgallery.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer>
{
@Query("select a from Admin a where username=?1 and password=?2")
public Admin checkadminlogin(String adminusername, String adminpassword);
}
