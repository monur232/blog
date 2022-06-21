package com.monur.blog.model.dto;

import com.monur.blog.common.GameStatus;
import com.monur.blog.model.entity.Game;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.util.Base64;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@NoArgsConstructor

public class GameDTO {

    private int id;
    @NotNull(message = "team A Name can not be null!!")
    @NotEmpty(message = "team A Name can not be empty!!")
    private String teamA;

    @NotNull(message = "team B Name can not be null!!")
    @NotEmpty(message = "team B Name can not be empty!!")
    private String teamB;

    @NotNull(message = "team A Result can not be null!!")
    @NotEmpty(message = "team A Result can not be empty!!")
    private String teamAResult;

    @NotNull(message = "team B Result can not be null!!")
    @NotEmpty(message = "team B Result can not be empty!!")
    private String teamBResult;


    private GameStatus teamAStatus;
    private String details;
    private MultipartFile teamAPhoto;
    private MultipartFile teamBPhoto;
    private String  teamAPhotoBytes;
    private String  teamBPhotoBytes;

    public GameDTO(Game game) {
        this.id = game.getId();
        this.teamA = game.getTeamA();
        this.teamB = game.getTeamB();
        this.teamAResult = game.getTeamAResult();
        this.teamBResult = game.getTeamBResult();
        this.teamAStatus = game.getTeamAStatus();
        this.details = game.getDetails();
        this.teamAPhotoBytes = Base64.getEncoder().encodeToString(game.getTeamAPhoto().getPhotoBytes());;
        this.teamBPhotoBytes = Base64.getEncoder().encodeToString(game.getTeamBPhoto().getPhotoBytes());;


    }
}
