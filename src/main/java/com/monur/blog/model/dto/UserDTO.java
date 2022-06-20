package com.monur.blog.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UserDTO {

    private int id;

    private String email;

    private String password;

    private String firstName;

    private String lastName;

    private int active;

    private String address;

    private String phone;

    private String birthDate;

    private Set<RoleDTO> roles;

    private String newPass;

    private String confirmPass;

    private String role;


}
