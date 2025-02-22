package com.example.myfirstwebapp.todo;
import jakarta.validation.Valid;
import org.springframework.cglib.core.Local;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
@Service
public class TodoService {
   static int count=0;
    private static List<Todo>todos=new ArrayList<>();

    static {
        todos.add(new Todo(++count,"Ganesh","Learn Java",
                LocalDate.now().plusYears(1),false));
        todos.add(new Todo(++count,"Hanmant","Learn Spring",
                LocalDate.now().plusYears(1),false));
        todos.add(new Todo(++count,"Aditya","Learn JPA",
                LocalDate.now().plusYears(1),false));

    }
    public List<Todo>findByUserName(String UserName){
        String loginUser=getLoggedInUserName();
        if(loginUser.equals(UserName)){
            return todos;
        }
        return new ArrayList<>();
    }
    public void addToDO(String userName,String description,LocalDate date,Boolean done){

        Todo todo=new Todo(++count,userName,description,date,done);
        todos.add(todo);
    }
    public void deleteById(int id) {
        //todo.getId() == id
        // todo -> todo.getId() == id
        Predicate<?super Todo> predicate = todo -> todo.getId() == id;
        todos.removeIf(predicate);
    }

    public Todo findById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        Todo todo = todos.stream().filter(predicate).findFirst().get();
        return todo;
    }


    public void updateTodo(Todo updatedTodo) {
        Todo existingTodo = findById(updatedTodo.getId());
        existingTodo.setDescription(updatedTodo.getDescription());
        existingTodo.setDate(updatedTodo.getDate());
        existingTodo.setDone(updatedTodo.getDone());
    }
    private String getLoggedInUserName(){
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }
}
