package com.example.myfirstwebapp.todo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository

public interface TodoRepository extends JpaRepository<Todo,Integer> {
    public List<Todo>findByUserName(String userName);
}
