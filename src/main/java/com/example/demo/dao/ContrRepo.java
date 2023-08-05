package com.example.demo.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Contr;

public interface ContrRepo extends CrudRepository<Contr, String>{

	@Query("SELECT p FROM Contr p WHERE p.mobile = :mobile AND p.password = :password")
	Contr findByMobileAndPassword(String mobile, String password);

}
