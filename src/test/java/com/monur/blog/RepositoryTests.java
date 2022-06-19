package com.monur.blog;


import com.monur.blog.common.GameStatus;
import com.monur.blog.model.entity.Game;
import com.monur.blog.model.entity.Photo;
import com.monur.blog.model.entity.User;
import com.monur.blog.repo.GameRepository;
import com.monur.blog.repo.PhotoRepository;
import com.monur.blog.repo.UserRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;


@SpringBootTest
public class RepositoryTests {


    @Autowired
    UserRepository userRepository;

    @Autowired
    GameRepository gameRepository;
    @Autowired
    PhotoRepository photoRepository;

    @Test
    public void UserRepositoryNullTest() throws Exception {
        Assertions.assertThat(userRepository).isNotNull();
    }


    @Test
    public void UserRepositoryCustomQueryTest() throws Exception {

        String email = "email@gmail.com";

        User user = new User(null,
                email,
                "abc",
                "firstname",
                "dhaka",
                "01666464464",
                "2000-01-01",
                "lastname",
                0,
                null
        );

        user = userRepository.save(user);
        //custom query
        //parameterized test
        User user1 = userRepository.findByEmailAddress(email);
        Assertions.assertThat(user1).isNotNull();

        //custom query
        List<User> allUsers = userRepository.findAllUsers();
        Assertions.assertThat(allUsers.size()).isNotZero();

        userRepository.delete(user);

        Assertions.assertThat(userRepository.findByEmailAddress(email)).isNull();


    }








    @Test
    public void GameRepositoryNullTest() throws Exception {
        Assertions.assertThat(gameRepository).isNotNull();
    }


    @Test
    public void GameRepositoryCustomQueryTest() throws Exception {


        Photo teamAPhoto = new Photo(null, new byte[1000]);
        Photo teamBPhoto = new Photo(null, new byte[1000]);
        teamAPhoto = photoRepository.save(teamAPhoto);
        teamBPhoto = photoRepository.save(teamAPhoto);

        Game game = new Game(
                null,
                "Team A",
                "Team B",
                "5",
                "6",
                GameStatus.Loss,
                "Nice game",
                teamAPhoto,
                teamBPhoto


        );

        game = gameRepository.save(game);
        //custom query
        List<Game> allGames = gameRepository.findAllGames();
        Assertions.assertThat(allGames.size()).isNotZero();


        gameRepository.delete(game);

        Assertions.assertThat(gameRepository.findAllGames().size()).isZero();


    }

}
