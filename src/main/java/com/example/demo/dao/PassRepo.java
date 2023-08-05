package com.example.demo.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.example.demo.model.Pass;

public interface PassRepo extends CrudRepository<Pass, String>{

	@Query("SELECT p FROM Pass p WHERE p.mobile = :mobile AND p.password = :password")
	Pass findByMobileAndPassword(String mobile, String password);

}
