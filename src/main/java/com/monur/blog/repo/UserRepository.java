package com.monur.blog.repo;


import com.monur.blog.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {
    //custom query
    @Query(value = "SELECT u FROM User u where u.email=:emailAddress ", nativeQuery = false)
    User findByEmailAddress(@Param("emailAddress") String email);

    //custom query
    @Query(value = "SELECT u FROM User u ", nativeQuery = false)
    List<User> findAllUsers();


}