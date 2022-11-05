package com.sportyshoes.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SportyShoesResource {

	@RequestMapping(value="/adminlogin" , method=RequestMethod.POST )
	public ResponseEntity<Object> adminLogin() {
		return new ResponseEntity<Object>("hello", HttpStatus.OK);
	}
}
