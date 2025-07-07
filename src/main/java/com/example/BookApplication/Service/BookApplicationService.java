// BookApplicationService.java
package com.example.BookApplication.Service;

import com.example.BookApplication.model.PathModel;
import com.example.BookApplication.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookApplicationService {

    @Autowired
    private BookRepository repo;

    public List<PathModel> getAllBooks() {
        return repo.findAll();
    }

    public void addBook(PathModel book) {
        repo.save(book);
    }

    public PathModel getBookById(Long id) {
        return repo.findById(id.intValue()).orElse(null);
    }
}
