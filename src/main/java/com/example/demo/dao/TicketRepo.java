package com.example.demo.dao;

import java.security.Timestamp;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Ticket;

public interface TicketRepo extends CrudRepository<Ticket, Timestamp>{

}
