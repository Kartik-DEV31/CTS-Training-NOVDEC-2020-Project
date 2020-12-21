package managmentApplication.RestaurantChainManagmentApplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ComponentScan("managmentApplication.*")
@EntityScan("managmentApplication.applicationModel")
@EnableJpaRepositories(basePackages = "managmentApplication.applicationRepository")
@SpringBootApplication
public class RestaurantChainManagmentApplication {

	public static void main(String[] args) {
		SpringApplication.run(RestaurantChainManagmentApplication.class, args);
	}

}
