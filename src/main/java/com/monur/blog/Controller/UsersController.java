package com.monur.blog.Controller;


import com.monur.blog.model.dto.UserDTO;
import com.monur.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersController {

    @Autowired
    private UserService userService;

    // view all users list.............
    @GetMapping(path = "/users")
    public String home(Model model) {
        try {
            model.addAttribute("userDTO", new UserDTO());
            model.addAttribute("users", userService.findAllUsers());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "users-list";
    }

}
