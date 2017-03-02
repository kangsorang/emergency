package com.sorang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

import com.sorang.mapper.CityMapper;

@SpringBootApplication
public class EmergencyApplication {

	private final CityMapper cityMapper;
	
	public static void main(String[] args) {
		SpringApplication.run(EmergencyApplication.class, args);
	}

    public EmergencyApplication(CityMapper cityMapper) {
        this.cityMapper = cityMapper;
    }
}
