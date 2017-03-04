package com.sorang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

import com.sorang.mapper.StudentMapper;

@SpringBootApplication
public class EmergencyApplication {

	private final StudentMapper studentMapper;
	
	public static void main(String[] args) {
		SpringApplication.run(EmergencyApplication.class, args);
	}

    public EmergencyApplication(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }
}
