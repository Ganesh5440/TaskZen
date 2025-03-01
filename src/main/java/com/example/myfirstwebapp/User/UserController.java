package com.example.myfirstwebapp.User;

import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class UserController {
    UserRepository repository;
    PasswordEncoder passwordEncoder;
    public UserController(UserRepository repository,PasswordEncoder passwordEncoder){
        this.passwordEncoder=passwordEncoder;
        this.repository=repository;
    }
    @GetMapping(value = "/hello")
    @ResponseBody
    public String hello(){
        return new String("Hello this is ganesh");
    }
    @PostMapping(value = "/create/user")
    public ResponseEntity<String> createUser(@Valid @RequestBody User user, BindingResult result){
        if(result.hasErrors()){
            throw new RuntimeException("Error occured during creating a user");
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        repository.save(user);
        return ResponseEntity.ok("User Created SuccessFully");
    }
    @PostMapping(value = "register")
    public ResponseEntity<String>createUser(@Valid @RequestParam String username,
                                            @RequestParam String password, @RequestParam String email){
        if(repository.existsByEmail(email)){
            return ResponseEntity.badRequest().body("Email Already Exist");
        }
        if(repository.existsByUsername(username)){
            return ResponseEntity.badRequest().body("UserName already Exists");
        }
        User user=new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(passwordEncoder.encode(password));
        repository.save(user);
        return ResponseEntity.ok("User Created Successfully You can Login");

    }
}
