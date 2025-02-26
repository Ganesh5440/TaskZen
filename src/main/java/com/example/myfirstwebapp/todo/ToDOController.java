package com.example.myfirstwebapp.todo;

import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import java.time.LocalDate;
import java.util.List;

//@Controller
@SessionAttributes("name")
public class ToDOController {
    private final TodoService todoService;

    public ToDOController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping ("listoftodo")
    public String getAllTodo(ModelMap model){
        String userName=getLoggedInUserName();
        List<Todo>todo=todoService.findByUserName(getLoggedInUserName());
        model.put("todo",todo);
        return "listoftodo";
    }
    @RequestMapping(value="addtodo", method = RequestMethod.GET)
    public String showNewTodoPage(ModelMap model) {
        String username = getLoggedInUserName();
        Todo todo = new Todo( username, "", LocalDate.now().plusYears(1), false);
        model.put("todo", todo);
        return "addtodo";
    }

    @RequestMapping(value="addtodo", method = RequestMethod.POST)
    public String addNewTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "addtodo";
        }
        String username = (String) model.get("name");
        todoService.addToDO(username, todo.getDescription(),todo.getDate(), todo.getDone());

        return "redirect:listoftodo";
    }

    @RequestMapping(value = "deleteToDo")
    public String deleteToDo(@RequestParam int id){
        todoService.deleteById(id);
        return "redirect:listoftodo";
    }
    @RequestMapping(value = "updateToDo" ,method=RequestMethod.GET)
    public String updateToDo(@RequestParam int id,ModelMap model){
        Todo todo = todoService.findById(id);
        model.addAttribute("todo", todo);  // Ensure the model contains 'todo'
        return "updateToDo";
    }
    @RequestMapping(value = "updateToDo", method = RequestMethod.POST)
    public String updateToDoPost(ModelMap model, @Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "updateToDo";
        }
        String username = getLoggedInUserName();
        todo.setUserName(username);  // Set username correctly
        todoService.updateTodo(todo); // Update the todo with correct values
        return "redirect:listoftodo";
    }
    private String getLoggedInUserName(){
        Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }

}
