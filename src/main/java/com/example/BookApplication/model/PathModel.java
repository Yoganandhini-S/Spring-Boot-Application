package com.example.BookApplication.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="book")
public class PathModel {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int bookNo;
    private Long id;

    @Column
    private String title;
    private String author;
    private String publisher;
    private String category;
    private int price;
    private String username;
    private String password;

    public PathModel() { }

    public PathModel(Long id,int bookNo, String title, String author, String publisher, String category, int price,String username, String password) {
        this.bookNo = bookNo;
        this.id = id;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.category = category;
        this.price = price;
        this.setUsername(username);
        this.setPassword(password);
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getBookNo() { 
        return bookNo; 
    }

    public void setBookNo(int bookNo) { 
        this.bookNo = bookNo; 
    }

    public String getTitle() { 
        return title; 
    }

    public void setTitle(String title) { 
        this.title = title; 
    }

    public String getAuthor() { 
        return author; 
    }

    public void setAuthor(String author) { 
        this.author = author; 
    }

    public String getPublisher() { 
        return publisher; 
    }

    public void setPublisher(String publisher) { 
        this.publisher = publisher; 
    }

    public String getCategory() { 
        return category; 
    }

    public void setCategory(String category) { 
        this.category = category; 
    }

    public int getPrice() { 
        return price; 
    }

    public void setPrice(int price) { 
        this.price = price; 
    }
    
    
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

    @Override
    public String toString() {
        return "PathModel [bookNo=" + bookNo + ",id=" + id + ", title=" + title + ", author=" + author +
                ", publisher=" + publisher + ", category=" + category + ", price=" + price + " ,username=" + username + ",password=" + password +"]";
    }

	
}