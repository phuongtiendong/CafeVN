package ru.mirea.borenjongens.Config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
@EnableAspectJAutoProxy
@ComponentScan({"ru.mirea.borenjongens.Service", "ru.mirea.borenjongens.Util"})
public class CoreConfig {
}
