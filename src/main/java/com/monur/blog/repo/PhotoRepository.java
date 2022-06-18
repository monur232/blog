package com.monur.blog.repo;


import com.monur.blog.model.entity.Photo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("photoRepository")
public interface PhotoRepository extends JpaRepository<Photo, Integer> {

}
