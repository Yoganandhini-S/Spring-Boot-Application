package com.example.BookApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BookApplication.model.PathModel;
@Repository
public interface BookRepository extends JpaRepository<PathModel, Integer> {
	
}