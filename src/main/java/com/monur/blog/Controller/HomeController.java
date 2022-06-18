package com.monur.blog.Controller;


import com.monur.blog.model.dto.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @GetMapping(value = "public/home")
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userDTO", new UserDTO());
        modelAndView.setViewName("public/home");
        return modelAndView;
    }

    @GetMapping(value = "aboutUs")
    public ModelAndView aboutUs() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userDTO", new UserDTO());
        modelAndView.setViewName("public/about_us");
        return modelAndView;
    }




}
