<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
           body {
    font-family: Arial, sans-serif;
    background-color: pink;
    padding: 40px;
    background-image: url("book.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
}
   form {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            width: 400px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="password"], input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: red;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <form action="login" method="post">
        <h2>Login</h2>
        
        <label>Username:</label><br/>
        <input type="text" name="username" required/><br/><br/>

        <label>Password:</label><br/>
        <input type="password" name="password" required/><br/><br/>

        <input type="submit" value="login"/>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
    </form>
</body>
</html>