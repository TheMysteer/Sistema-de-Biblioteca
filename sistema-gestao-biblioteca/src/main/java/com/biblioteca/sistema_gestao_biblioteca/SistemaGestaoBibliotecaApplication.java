package com.biblioteca.sistema_gestao_biblioteca;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(
    exclude = DataSourceAutoConfiguration.class
)
public class SistemaGestaoBibliotecaApplication {
    public static void main(String[] args) {
        SpringApplication.run(SistemaGestaoBibliotecaApplication.class, args);
    }
}
