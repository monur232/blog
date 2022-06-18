package com.monur.blog.Controller;

import com.monur.blog.model.dto.UserDTO;
import com.monur.blog.model.entity.User;
import com.monur.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @GetMapping(value = { "/login"})
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @GetMapping(value = "/registration")
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userDTO", new UserDTO());
        modelAndView.setViewName("registration");
        return modelAndView;
    }

    @PostMapping(value = "/registration")
    public ModelAndView createNewUser(@Validated UserDTO userDTO) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.findUserByEmail(userDTO.getEmail());
        if (user == null) {
            userService.saveUser(userDTO);
            modelAndView.addObject("user", new UserDTO());
            modelAndView.setViewName("login");
        } else {
            modelAndView.addObject("successMessage", "There is already registered user...!");
            modelAndView.setViewName("registration");
        }
        return modelAndView;
    }

    @GetMapping(value = "user/info")
    public ModelAndView userProfile() {
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        System.out.println(auth.getName());
        User user = userService.findUserByEmail(auth.getName());
        modelAndView.addObject("user", user);
        modelAndView.addObject("userName", user.getFirstName() + " " + user.getLastName());
        modelAndView.setViewName("user-profile");
        return modelAndView;
    }

    @GetMapping(value = "/change/password")
    public ModelAndView changePassword() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userDTO", new UserDTO());
        modelAndView.setViewName("password-update");
        return modelAndView;
    }

    @PostMapping(value = "/new/password")
    public ModelAndView newPassword(UserDTO userDTO) {
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if (userDTO.getNewPass().equals(userDTO.getConfirmPass())) {
            User user = userService.findUserByEmail(auth.getName());
            Boolean status = userService.isPasswordValid(userDTO.getPassword(), user.getPassword());
            if (status == true) {

                userService.changePasswor(user, userDTO);
                modelAndView.setViewName("login");
            } else {
                modelAndView.addObject("wrongPass", "Current possword was wrong..!");
                modelAndView.setViewName("password-update");
            }

        } else {
            modelAndView.addObject("passMatched", "Password doesn't matched..!");
            modelAndView.setViewName("password-update");
        }
        return modelAndView;
    }

    @GetMapping(value = "/admin/home")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userService.findUserByEmail(auth.getName());
        String name = SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
        System.out.println(name);
        modelAndView.addObject("userName",
                "Welcome " + user.getFirstName() + " " + user.getLastName() + " (" + user.getEmail() + ")");
        modelAndView.addObject("adminMessage", "Content Available Only for Users with Admin Role");
        modelAndView.setViewName("admin/home");
        return modelAndView;
    }

}
