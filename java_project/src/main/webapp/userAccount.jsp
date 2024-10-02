<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Account - Laundry Management System</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-image: url('back.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex; /* Center content */
            justify-content: center;
            align-items: center;
        }

        .container {
            max-width: 800px;
            width: 100%; /* Full width */
            background: rgba(255, 255, 255, 0.9); /* Slightly transparent */
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            border-radius: 10px;
            margin: 50px 20px; /* Add some margin for small screens */
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .nav-menu {
            background: #28a745;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 30px;
            text-align: center;
        }

        .nav-menu a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
            transition: color 0.3s;
        }

        .nav-menu a:hover {
            text-decoration: underline;
            color: #d4edda; /* Lighten on hover */
        }

        .profile-info {
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 16px;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background: #f2f2f2;
        }

        table tr:hover {
            background: #f9f9f9;
        }

        .button-container {
            text-align: right;
            margin-top: 20px;
        }

        .button-container button {
            padding: 10px 20px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }

        .button-container button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="nav-menu">
            <a href="#">Dashboard</a>
            <a href="userAccount.jsp">My Account</a>
            <a href="contactUs.jsp">Contact Us</a>
            <a href="contactInsert">MyInquries</a>
        </div>

        <!-- Profile Section -->
        <h2>Profile Information</h2>
        <div class="profile-info">
        	<h3>Welcome, <%= session.getAttribute("username") %>!</h3>
            <!-- Table displaying customer details -->
            <table>
                <c:forEach var="cus" items="${custDetails}">
                    <tr>
                        <th>Customer ID</th>
                        <td>${cus.idCustomer}</td>
                    </tr>
                    <tr>
                        <th>Customer Name</th>
                        <td>${cus.name}</td>
                    </tr>
                    <tr>
                        <th>Customer Email</th>
                        <td>${cus.email}</td>
                    </tr>
                    <tr>
                        <th>Customer Phone</th>
                        <td>${cus.phone}</td>
                    </tr>
                    <tr>
                        <th>Customer Username</th>
                        <td>${cus.username}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <div class="button-container">
            <button onclick="location.href='editProfile.jsp'">Edit Profile</button>
        </div>
    </div>
</body>
</html>
