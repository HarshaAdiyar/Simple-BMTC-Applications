package com.example.demo.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.FairRepo;
import com.example.demo.model.Fair;

@Service
public class FairService {

	@Autowired
    private FairRepo fairRepository;

    public List<Fair> getAllFairs() {
        Iterable<Fair> fairs = fairRepository.findAll();
        System.out.println("hi");

        System.out.println(fairs);
        return StreamSupport.stream(fairs.spliterator(), false)
                .collect(Collectors.toList());
    }
    // other methods

	public void deleteFair(String id) {
		fairRepository.deleteById(id);
	}
}
