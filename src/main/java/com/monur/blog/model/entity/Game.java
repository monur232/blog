package com.monur.blog.model.entity;

import com.monur.blog.common.GameStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "game")
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;



    @Column(name = "team_a")
    private String teamA;


    @Column(name = "team_b")
    private String teamB;

    @Column(name = "team_a_result")
    private String teamAResult;

    @Column(name = "team_b_result")
    private String teamBResult;


    @Column(name = "team_a_status")
    private GameStatus teamAStatus;



    @Column(name = "details")
    private String details;


    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "team_a_photo_id",referencedColumnName = "id")
    private Photo teamAPhoto;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "team_b_photo_id",referencedColumnName = "id")
    private Photo teamBPhoto;

}
