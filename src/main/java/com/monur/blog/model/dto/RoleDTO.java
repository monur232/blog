package com.monur.blog.model.dto;


import com.monur.blog.model.entity.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class RoleDTO {

    private int id;

    private String role;

    private User user;


}
