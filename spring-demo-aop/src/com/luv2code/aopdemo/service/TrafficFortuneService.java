package com.luv2code.aopdemo.service;

import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Component;

@Component
public class TrafficFortuneService {

	public String getFortune() {

		try {

			TimeUnit.SECONDS.sleep(5);

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return "Expect heavy traffic this morning";
	}

	public String getFortune(Boolean tripWire) {
		if (tripWire == true) {
			throw new RuntimeException("Major accident! Highway is closed!");
		}
		
		return "Except heavy traffic this morning";
	}

}
