package com.example.BookApplication.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.BookApplication.model.LoginModel;
import com.example.BookApplication.model.PathModel;
import com.example.BookApplication.repository.BookRepository;

import com.example.BookApplication.repository.Repository_login;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BookController {

    @Autowired
    BookRepository repo;

    @Autowired
    Repository_login rep;
    
    @GetMapping("/login")
    public String loginPage() {
        return "/WEB-INF/pages/login";
    }

    @PostMapping("/submitLogin")
    public String submitLogin(LoginModel login) {
        rep.save(login);
        return "/WEB-INF/pages/addBook";
    }

    @GetMapping("/addBook")
    public String addBook() {
        return "/WEB-INF/pages/addBook";
    }

    @PostMapping("/submit")
    public String submit(PathModel book) {
        repo.save(book);
        return "/WEB-INF/pages/index";
    }

    @GetMapping("/view")
    public String viewBooks(HttpServletRequest request) {
        List<PathModel> books = repo.findAll();
        request.setAttribute("books", books);
        return "/WEB-INF/pages/view";
    }

 // Login Form Submission
    @PostMapping("/login")
   public String loginSubmit(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("Yoga".equals(username) && "Yoga@123".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            return "redirect:/WEB-INF/pages/home";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "/WEB-INF/pages/login";
        }
    }
    @GetMapping("/home")
    public String home() {
        return "/WEB-INF/pages/index"; 
    }

    // Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/WEB-INF/pages/login";
    }
 // Delete Book by ID
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable("id") int id) {
        repo.deleteById(id);
        return "redirect:/WEB-INF/pages/view";
    }

    // Show form with existing book data for update
    @GetMapping("/edit/{id}")
    public String editBook(@PathVariable("id") int id, HttpServletRequest request) {
        PathModel book = repo.findById(id).orElse(null);
        request.setAttribute("book", book);
        return "/WEB-INF/pages/edit"; // New JSP page for editing
    }

    // Update book (POST)
    @PostMapping("/update")
    public String updateBook(@ModelAttribute PathModel book) {
        repo.save(book);
        return "redirect:/WEB-INF/pages/view";
    }

}
