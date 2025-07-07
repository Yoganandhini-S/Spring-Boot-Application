  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: pink;
            margin: 0;
        }
        nav {
            background-color: #333333;
            padding: 14px 20px;
            display: flex;
            justify-content: center;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }
        nav a:hover {
            color: #4CAF50;
        }
        .container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 50px auto;
        }
        h1 {
            text-align: center;
            color: #333333;
            margin-bottom: 30px;
        }
        form div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #555555;
        }
        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #cccccc;
            border-radius: 6px;
            box-sizing: border-box;
        }
        button {
            background-color: red;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        a button {
            background-color: #008CBA;
            margin-top: 10px;
        }
        a button:hover {
            background-color: #007bb5;
        }
    </style>
 <body>

    <div class="container">
        <h1>Book Store Application</h1>
        <form method="post" action="submit">
            <div>
                <label>Title</label>
                <input type="text" name="title" id="title" required>
            </div> 
            <div>
                <label>Author</label>
                <input type="text" name="author" id="author" required>
            </div> 
            <div>
                <label>Publisher</label>
                <input type="text" name="publisher" id="publisher" required>
            </div> 
            <div>
                <label>Category</label>
                <input type="text" name="category" id="category" required>
            </div> 
            <div>
                <label>Price</label>
                <input type="number" name="price" id="price" required>
            </div> 
            <div>
                <button type="submit" value="submit" id="submit">Submit</button>
            </div>
            <br>
            <a href="/view"><button type="button">View All Books</button></a>
        </form>
    </div>
</body>
</html>





