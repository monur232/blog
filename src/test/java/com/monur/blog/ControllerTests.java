package com.monur.blog;


import com.monur.blog.Controller.GameController;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class ControllerTests {


    @Autowired
    GameController gameController;

    @Test
    public void contextLoads() throws Exception {
        Assertions.assertThat(gameController).isNotNull();
    }


}
