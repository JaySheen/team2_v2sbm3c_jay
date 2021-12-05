package dev.mvc.team2_v2sbm3c_jay;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"dev.mvc"})
public class Team2V2sbm3cJayApplication {

	public static void main(String[] args) {
		SpringApplication.run(Team2V2sbm3cJayApplication.class, args);
	}

}
