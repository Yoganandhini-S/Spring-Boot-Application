<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   <link rel="icon" type="image/x-icon" href="C:\Users\nandh\eclipse-workspace\BookApplication\src\main\webapp\icon.png">
   
    <title>Book List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: pink;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px;
        }
        h1 {
            color: #333333;
            margin-bottom: 30px;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 12px;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        button {
            background-color: #008CBA;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #007bb5;
        }
        .delete-button {
            background-color: red;
        }
        .logout-button {
<<<<<<< HEAD
            background-color: red;
=======
            background-color: red; 
>>>>>>> 50ddea4 (initial commit)
            margin-top: 20px;
            padding: 10px 20px;
            border-radius: 8px;
        }
        .logout-button:hover {
            background-color: green;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h1>Book List</h1>

    <table>
        <tr>
            <th>Book No</th>
            <th>Title</th>
            <th>Author</th>
            <th>Publisher</th>
            <th>Category</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.bookNo}</td>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.publisher}</td>
                <td>${book.category}</td>
                <td>${book.price}</td>
                <td>
                    <a href="/edit/${book.bookNo}">
                        <button>Edit</button>
                    </a>
                    <a href="/delete/${book.bookNo}" onclick="return confirm('Are you sure you want to delete this book?');">
                        <button class="delete-button">Delete</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a href="logout">
        <button class="logout-button">Logout</button>
    </a>
</body>
</html>
<<<<<<< HEAD

=======
>>>>>>> 50ddea4 (initial commit)
