package ru.mirea.borenjongens.Config;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.core.annotation.Order;
import ru.mirea.borenjongens.BorenjongensApplication;

@Order(1)
public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(BorenjongensApplication.class);
    }

}
