<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
                <button style="background-color: red;">Delete</button>
               
            </a>
             
        </td>
    </tr>
</c:forEach>
        
    </table>

    <br>
    <a href="logout">Logout</a>
</body>
</html>