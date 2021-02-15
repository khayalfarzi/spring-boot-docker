package com.example.springbootdocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootDockerApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootDockerApplication.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "Hello Docker World";
    }

    @GetMapping("/sec")
    public String second() {
        return "Hello Docker World second file";
    }

    @GetMapping("/third")
    public String third() {
        return "Hello Docker World third file";
    }

}