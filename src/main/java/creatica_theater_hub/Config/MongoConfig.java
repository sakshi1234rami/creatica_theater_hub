package creatica_theater_hub.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;

@Configuration
@EnableMongoRepositories(basePackages="cretatica_theater_hub.Repositries")
public class MongoConfig {
	
	@Bean
	public MongoClient mongoClient() {
		System.out.println("Step 1");
		return MongoClients.create("mongodb+srv://h40458142_db_user:VpYzmSuGOWM5V3Eh@creaticaserver.khiiqh7.mongodb.net/");
	}
	
	@Bean
	public MongoTemplate mongoTemplate() {
		System.out.println("Step 2");
		return new MongoTemplate(mongoClient(),"AdminMasterDB");
	}
}
