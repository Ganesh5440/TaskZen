package com.example.myfirstwebapp.todo;

import jakarta.validation.constraints.Size;

import java.time.LocalDate;

public class Todo {
    private  int id;
    @Size (min = 8 ,message = "Atleast should be 8")
    private String UserName;
    @Size (min = 8 ,message = "Description should Atleast  be 8")
    private String Description;
    private LocalDate date;
    private Boolean done;

    public String getUserName() {
        return UserName;
    }

    @Override
    public String toString() {
        return "Todo{" +
                "id=" + id +
                ", UserName='" + UserName + '\'' +
                ", Description='" + Description + '\'' +
                ", date=" + date +
                ", done=" + done +
                '}';
    }

    public Todo(int id, String UserName, String Description, LocalDate date, Boolean done) {
        this.date=date;
        this.done=done;
        this.Description=Description;
        this.UserName=UserName;
        this.id = id;
    }

    public Boolean getDone() {
        return done;
    }

    public void setDone(Boolean done) {
        this.done = done;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        this.Description = description;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
