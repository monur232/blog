package com.monur.blog;


import com.monur.blog.model.dto.UserDTO;
import com.monur.blog.model.entity.User;
import com.monur.blog.repo.UserRepository;
import com.monur.blog.service.LoginService;
import com.monur.blog.service.UserService;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;


@SpringBootTest
public class ServiceTests {


    @Autowired
    UserService userService;

    @Autowired
    LoginService loginService;

    @Autowired
    UserRepository userRepository;

    @Test
    public void userServiceNullTest() throws Exception {
        Assertions.assertThat(userService).isNotNull();
    }


    @Test
    public void userServiceTest() throws Exception {


        String email = "email@gmail.com";

        UserDTO userDTO = new UserDTO(
                1,
                email,
                "abc",
                "firstname",
                "lastname",
                0, "dhaka",
                "01666464464",
                "2000-01-01",
                null
                , "gds",
                "sdgsd",
                "ADMIN"
        );
        userService.saveUser(userDTO);
        //custom query
        User user = userService.findUserByEmail(email);
        Assertions.assertThat(user).isNotNull();

        //custom query
        List<UserDTO> allUsers = userService.findAllUsers();
        Assertions.assertThat(allUsers.size()).isNotZero();
        userRepository.delete(user);

        Assertions.assertThat(userService.findAllUsers().size()).isZero();


    }

    @Test
    public void loginServiceNullTest() throws Exception {
        Assertions.assertThat(loginService).isNotNull();
    }


    @Test
    public void loginServiceTest() throws Exception {


        String email = "email@gmail.com";

        UserDTO userDTO = new UserDTO(
                1,
                email,
                "abc",
                "firstname",
                "lastname",
                0, "dhaka",
                "01666464464",
                "2000-01-01",
                null
                , "gds",
                "sdgsd",
                "ADMIN"
        );
        loginService.signUp(userDTO);
        //custom query
        User user = userService.findUserByEmail(email);
        Assertions.assertThat(user).isNotNull();

        //custom query
        List<UserDTO> allUsers = userService.findAllUsers();
        Assertions.assertThat(allUsers.size()).isNotZero();
        userRepository.delete(user);

        Assertions.assertThat(userService.findAllUsers().size()).isZero();


    }


}
