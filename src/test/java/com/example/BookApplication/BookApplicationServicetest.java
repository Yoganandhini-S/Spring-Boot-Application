// BookApplicationServicetest.java
package com.example.BookApplication;

import com.example.BookApplication.model.PathModel;
import com.example.BookApplication.Service.BookApplicationService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class BookApplicationServicetest {

    @Autowired
    private BookApplicationService bookService;

    @Test
    public void testAddAndGetBook() {
        PathModel book = new PathModel();
        book.setTitle("The Hobbit");
        book.setAuthor("J.R.R. Tolkien");
        book.setPublisher("Allen & Unwin");
        book.setCategory("Fantasy");
        book.setPrice(500);
        book.setUsername("user1");
        book.setPassword("pass1");

        bookService.addBook(book);

        // Since the ID is auto-generated, you have to get the list and find it
        List<PathModel> allBooks = bookService.getAllBooks();
        Assertions.assertFalse(allBooks.isEmpty());

        PathModel fetched = allBooks.get(allBooks.size() - 1); // get last added
        Assertions.assertEquals("The Hobbit", fetched.getTitle());
    }

    @Test
    public void testGetAllBooks() {
        int initialSize = bookService.getAllBooks().size();

        PathModel book = new PathModel();
        book.setTitle("New Book");
        book.setAuthor("Some Author");
        book.setPublisher("Some Publisher");
        book.setCategory("Category");
        book.setPrice(300);
        book.setUsername("user2");
        book.setPassword("pass2");

        bookService.addBook(book);

        List<PathModel> books = bookService.getAllBooks();
        Assertions.assertEquals(initialSize + 1, books.size());
    }
}
