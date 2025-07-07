package com.example.BookApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.BookApplication.model.LoginModel;
import com.example.BookApplication.model.PathModel;

public interface Repository_login extends JpaRepository<PathModel, Integer> {

	void save(LoginModel login);
}
