package com.sport.blog.service;

import com.sport.blog.model.dto.UserDTO;
import com.sport.blog.model.entity.Role;
import com.sport.blog.model.entity.User;
import com.sport.blog.repo.UserRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class LoginService {

    @Autowired
    private UserRepository userRepository;

    public void signUp(UserDTO userDTO) {
        userRepository.save(copyUserDtoToEntity(userDTO));
    }

    public User copyUserDtoToEntity(UserDTO userDTO) {
        User user = new User();
        BeanUtils.copyProperties(userDTO, user);
        user.setPassword(generateBcryptHash12(userDTO.getPassword()));
        user.setActive(1);
        setRoles(user);
        return user;
    }

    private void setRoles(User user) {
        Set<Role> roles = new HashSet<>();
        Role role = new Role();
        role.setRole("ROLE_GUEST");
        role.setUser(user);
        roles.add(role);
        user.setRoles(roles);
    }


    public static String generateBcryptHash12(String plainPassword) {
        String generatedHash = BCrypt.hashpw(plainPassword, BCrypt.gensalt(12));
        return generatedHash;
    }

}
