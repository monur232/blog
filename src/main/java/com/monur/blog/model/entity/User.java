package com.monur.blog.model.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private int id;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
//	@Length(min = 5, message = "*Your password must have at least 5 characters")
    // @NotEmpty(message = "*Please provide your password")
    private String password;

    @Column(name = "first_name")
    // @NotEmpty(message = "*Please provide your name")
    private String firstName;

    @Column(name = "address")
    private String address;

    @Column(name = "phone")
    private String phone;

    @Column(name = "birth_date")
    private String birthDate;

    @Column(name = "last_name")
    // @NotEmpty(message = "*Please provide your last name")
    private String lastName;

    @Column(name = "active")
    private int active;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user", targetEntity = Role.class)
    private Set<Role> roles;



}
