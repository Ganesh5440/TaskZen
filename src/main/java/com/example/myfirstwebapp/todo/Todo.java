package com.example.myfirstwebapp.todo;

import jakarta.persistence.*;
import jakarta.validation.constraints.Size;
import java.time.LocalDate;

@Entity
public class Todo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment ID
    private int id;


    private String userName;


    private String description;

    private LocalDate date;
    private Boolean done;

    // No-Args Constructor (Required by JPA)
    public Todo() {}

    // Constructor with Fields
    public Todo( String userName, String description, LocalDate date, Boolean done) {
        this.userName = userName;
        this.description = description;
        this.date = date;
        this.done = done;
    }

    // Getters & Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public LocalDate getDate() { return date; }
    public void setDate(LocalDate date) { this.date = date; }

    public Boolean getDone() { return done; }
    public void setDone(Boolean done) { this.done = done; }

    @Override
    public String toString() {
        return "Todo{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", description='" + description + '\'' +
                ", date=" + date +
                ", done=" + done +
                '}';
    }
}
