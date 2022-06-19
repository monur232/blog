package com.monur.blog;

import static org.hamcrest.Matchers.containsString;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.monur.blog.Controller.GameController;
import com.monur.blog.Controller.UsersController;
import com.monur.blog.model.dto.UserDTO;
import com.monur.blog.model.entity.User;
import com.monur.blog.service.UserService;
import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Arrays;
import java.util.List;

@WebMvcTest(UsersController.class)
public class WebMockTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UserService service;

    @Test
    public void greetingShouldReturnMessageFromService() throws Exception {
        when(service.findAllUsers()).thenReturn((List<UserDTO>) Arrays.asList(
                new UserDTO(1, "email@gmail.com", "abc", "firstname","lastname",
                        0,"dhaka", "01666464464", "2000-01-01",    null
                ,"gds","sdgsd","ADMIN"
                )
        ));
        this.mockMvc.perform(get("/users")).andDo(print()).andExpect(status().isOk())
                .andExpect(content().string(containsString("email@gmail.com")));
    }
}