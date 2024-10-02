<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Laundry Management System</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your external CSS -->
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-image: url('back.jpg'); /* Add your background image here */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex; /* Use flexbox to center the content */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
        }

        .login-container {
            width: 400px;
            background: rgba(255, 255, 255, 0.9); /* Slightly transparent */
            padding: 30px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
            display: flex; /* Enable flexbox for centering */
            flex-direction: column; /* Stack children vertically */
            align-items: center; /* Center children horizontally */
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            width: 100%; /* Full width of the container */
            max-width: 350px; /* Maximum width for input boxes */
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            width: 100%;
            max-width: 350px; /* Maximum width for the button */
            padding: 12px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        button:hover {
            background: #218838;
        }

        .forgot-password {
            margin-top: 10px;
            font-size: 14px;
        }

        .error-message {
            color: red;
            margin-top: 20px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login to Your Account</h2>
        <form action="Login" method="post">
            <input type="text" name="Username" placeholder="Username" required autocomplete="off">
            <input type="password" name="Password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>

        <div class="forgot-password">
            <a href="#">Forgot your password?</a>
        </div>
        <p>New to Laundry Service? <a href="#">Register here</a></p>
    </div>
</body>
</html>
