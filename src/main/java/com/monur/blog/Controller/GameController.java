package com.monur.blog.Controller;


import com.monur.blog.model.dto.GameDTO;
import com.monur.blog.model.entity.Photo;
import com.monur.blog.model.entity.Game;
import com.monur.blog.repo.GameRepository;
import com.monur.blog.repo.PhotoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.*;

@Controller
public class GameController {


    @Autowired
    private GameRepository gameRepository;

    @Autowired
    private PhotoRepository photoRepository;

    @GetMapping(value = "admin/gameCreate")
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView();
        GameDTO gameDTO = new GameDTO();
        modelAndView.addObject("gameDTO", gameDTO);
        modelAndView.setViewName("admin/game_create");
        return modelAndView;
    }

    @PostMapping(value = "admin/gameCreate")
    public ModelAndView createNewGame(@Validated GameDTO gameDTO) throws IOException {
        ModelAndView modelAndView = new ModelAndView();
        Game game = new Game();
        game.setTeamA(gameDTO.getTeamA());
        game.setTeamAResult(gameDTO.getTeamAResult());

        game.setTeamB(gameDTO.getTeamB());
        game.setTeamBResult(gameDTO.getTeamBResult());

        game.setDetails(gameDTO.getDetails());
        game.setTeamAStatus(gameDTO.getTeamAStatus());
        Photo photoA = new Photo(null, gameDTO.getTeamAPhoto().getBytes());
        Photo photoB = new Photo(null, gameDTO.getTeamBPhoto().getBytes());
        photoA = photoRepository.save(photoA);
        photoB = photoRepository.save(photoB);
        game.setTeamAPhoto(photoA);
        game.setTeamBPhoto(photoB);

        gameRepository.save(game);

        modelAndView.addObject("successMessage", "There is already registered user...!");
        modelAndView.setViewName("admin/game_create");

        return modelAndView;
    }

    @GetMapping(value = "admin/gameUpdate/{id}")
    public ModelAndView updateGameView(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView();
        Optional<Game> gameOptional = gameRepository.findById(id);
        if (!gameOptional.isPresent()) {
            new Exception("No Game found using this id " + id);
        }


        GameDTO gameDTO = new GameDTO(gameOptional.get());
        modelAndView.addObject("gameDTO", gameDTO);
        modelAndView.setViewName("admin/game_update");
        return modelAndView;
    }

    @PostMapping(value = "admin/gameUpdate")
    public String updateGame(@Validated GameDTO gameDTO) throws IOException {
        ModelAndView modelAndView = new ModelAndView();

        Optional<Game> gameOptional = gameRepository.findById(gameDTO.getId());
        if (!gameOptional.isPresent()) {
            new Exception("No Game found using this id " + gameDTO.getId());
        }
        Game game = gameOptional.get();
        game.setTeamA(gameDTO.getTeamA());
        game.setTeamAResult(gameDTO.getTeamAResult());

        game.setTeamB(gameDTO.getTeamB());
        game.setTeamBResult(gameDTO.getTeamBResult());

        game.setDetails(gameDTO.getDetails());
        game.setTeamAStatus(gameDTO.getTeamAStatus());
        Photo photoA = new Photo(null, gameDTO.getTeamAPhoto().getBytes());
        Photo photoB = new Photo(null, gameDTO.getTeamBPhoto().getBytes());
        photoA = photoRepository.save(photoA);
        photoB = photoRepository.save(photoB);
        game.setTeamAPhoto(photoA);
        game.setTeamBPhoto(photoB);

        gameRepository.save(game);

        return "redirect:/";
    }


    @GetMapping(value = "admin/gameDelete/{id}")
    public String deleteGame(@PathVariable("id") int id) throws IOException {
        ModelAndView modelAndView = new ModelAndView();

        Optional<Game> gameOptional = gameRepository.findById(id);
        if (!gameOptional.isPresent()) {
            new Exception("No Game found using this id " + id);
        }
        Game game = gameOptional.get();


        gameRepository.delete(game);
        return "redirect:/";
    }


    @GetMapping(value = {"/", "admin/gameViews"})
    public ModelAndView gameViews() {

        List<Game> games = gameRepository.findAllGames();
        Set<GameDTO> gameDTOS = new HashSet<>();
        for (Game game : games) {
            gameDTOS.add(new GameDTO(game));
        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("gameDTOS", gameDTOS);
        modelAndView.setViewName("admin/game_views");
        return modelAndView;
    }
}
