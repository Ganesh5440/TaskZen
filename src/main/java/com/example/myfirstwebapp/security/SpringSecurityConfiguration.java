package com.example.myfirstwebapp.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import java.net.http.HttpRequest;

@Configuration
public class SpringSecurityConfiguration {
//    @Bean
//    public InMemoryUserDetailsManager createUserDetailManager(){
//
//        UserDetails userDetails1 = createUser("Ganesh","Ganesh");
//        UserDetails userDetails2 = createUser("user2","Ganesh");
//        return new InMemoryUserDetailsManager(userDetails1,userDetails2);
//    }
//
//    private UserDetails createUser(String Username,String Password) {
//        UserDetails userDetails=User.withUsername(Username)
//                .password(passwordEncoder().encode(Password))
//                .roles("USER","ADMIN")
//                .build();
//        return userDetails;
//    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/login", "/WEB-INF/jsp/**","/hello","/register").permitAll() // Allow access to login and welcome page
                        .anyRequest().authenticated() // All other pages require authentication
                )
                .formLogin(form -> form
                        .loginPage("/login") // Custom login page
                        .loginProcessingUrl("/login") // Form action URL
                        .defaultSuccessUrl("/welcome", true) // Redirect to welcome page after login
                        .permitAll()
                )
                .logout(logout -> logout
                        .logoutUrl("/logout")
                        .logoutSuccessUrl("/login?logout=true")
                        .permitAll()
                )
                .csrf(csrf -> csrf.disable()); // Disable CSRF (only if needed)

        return http.build();
    }
}
