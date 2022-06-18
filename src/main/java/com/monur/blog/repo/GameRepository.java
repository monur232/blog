package com.monur.blog.repo;


import com.monur.blog.model.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("gameRepository")
public interface GameRepository extends JpaRepository<Game, Integer> {
    //custom query
    @Query(value = "SELECT u FROM Game u ", nativeQuery = false)
    List<Game> findAllGames();
}
