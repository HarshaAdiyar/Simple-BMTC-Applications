package com.example.demo.controller;

import java.util.List;
import java.util.stream.Collectors;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ContrRepo;
import com.example.demo.dao.FairRepo;
import com.example.demo.dao.PassRepo;
import com.example.demo.model.Contr;
import com.example.demo.model.Fair;
import com.example.demo.model.Pass;
import com.example.demo.service.FairService;

import org.springframework.ui.Model;
import org.springframework.ui.Model;
import org.springframework.ui.Model;

@Controller
public class UserController {
	@Autowired
	PassRepo repo;
	@Autowired
	FairRepo fairRepo;
	@RequestMapping("/home")
	public String home() {
		System.out.println("Signup is working");
		return "base.jsp";
	}
	@RequestMapping("/addPass")
	public String addPass(Pass pass) {
		System.out.println(pass);
		repo.save(pass);
		return "Reg.jsp";
	}
	@RequestMapping("/signup")
	public String signup() {
		return "signup.jsp";
	}
	@RequestMapping("/login")
	public String login() {
		return "login.jsp";
	}
	@RequestMapping("/book")
	public String ticket() {
		return "book.jsp";
	}
	@RequestMapping("/edit")
	public String edit() {
		return "edit.jsp";
	}
	
	@RequestMapping("/addfair")
	public String addfair(Fair fair) {
		fairRepo.save(fair);
		return "edit.jsp";
	}
	 @Autowired
	    private FairService fairService;
	 
	 @GetMapping("/disp")
	 public String showFair(Model model) {
	     List<Fair> fairs = fairService.getAllFairs();
	     model.addAttribute("fairs", fairs);
//	     System.out.println(fairs);
	     return "disp.jsp";
	 }
	 @PostMapping("/deletefair")
	 public String deleteFair(@RequestParam String price) {
		 System.out.println(price);
	     fairService.deleteFair(price);
	     return "redirect:/disp";
	 }

	 @GetMapping("/fare")
	 public String getFare(Model model) {
		 List<Fair> fairs = fairService.getAllFairs();
	     model.addAttribute("fairs", fairs);
	     System.out.println(fairs);
	     return "book";
	 }

//	 @GetMapping("/disp")
//	    public String disp(Model model) {
////	        List<Fair> fairs = fairService.getAllFairs();
////	        model.addAttribute("fair", fairs);
//	        return "disp.jsp";
//	    }
//	@GetMapping("/")
//	public String showFareCalculator(Model model) {
//	    List<String> stops = bmtcService.getAllStops();
//	    model.addAttribute("stops", stops);
//	    return "fareCalculator";
//	}
//
//	@PostMapping("/fare")
//	public String calculateFare(@RequestParam String startStop, @RequestParam String endStop, Model model) {
//	    int fare = bmtcService.calculateFare(startStop, endStop);
//	    model.addAttribute("fare", fare);
//	    List<String> stops = bmtcService.getAllStops();
//	    model.addAttribute("stops", stops);
//	    return "fareCalculator";
//	}

	
    @Autowired
	ContrRepo cRepo;
    
    @PostMapping("/login")
    public String login(@RequestParam String mobile, @RequestParam String password, @RequestParam String login_type) {
       System.out.println(login_type);
       System.out.println(mobile);
       System.out.println(password);
    	if (login_type.equals("Passenger")) {
            Pass passe = repo.findByMobileAndPassword(mobile, password);
            System.out.println(passe);
            if (passe != null) {
                return "redirect:/book.jsp";
            }
        } else if (login_type.equals("Controller")) {
            Contr cont = cRepo.findByMobileAndPassword(mobile, password);
            System.out.println(cont);
            if (cont != null) {
                return "redirect:/edit.jsp";
            }
        }
        return "redirect:/home";
    }
    
	
	
}
