package com.atd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.atd.entity.student;

@Repository
public interface studentrepository  extends JpaRepository<student, Integer>{

}
