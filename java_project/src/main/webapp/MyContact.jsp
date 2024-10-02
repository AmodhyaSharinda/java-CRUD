<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Contacts</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body, html {
            height: 100%;
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
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.9); /* Slightly transparent white background */
            padding: 30px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow-y: auto; /* Enable vertical scrolling */
            max-height: 90vh; /* Limit the maximum height of the container */
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .nav-menu {
            background: #28a745; /* Green background for the menu */
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

        .table-container {
            max-height: 400px; /* Set a height for the scrollable area */
            overflow-y: auto; /* Enable vertical scrolling */
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
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

        .action-btn {
        	align: center;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin: 5px 20px; /* Space between buttons */
            transition: background-color 0.3s, transform 0.2s; /* Smooth transition */
        }

        .update-btn {
            background: #007bff; /* Blue background for update */
            color: white;
        }

        .update-btn:hover {
            background: #0056b3; /* Darker blue on hover */
            transform: translateY(-2px); /* Slightly lift effect */
        }

        .delete-btn {
            background: #dc3545; /* Red background for delete */
            color: white;
        }

        .delete-btn:hover {
            background: #c82333; /* Darker red on hover */
            transform: translateY(-2px); /* Slightly lift effect */
        }

        .button-container button {
            padding: 10px 20px;
            background: #007bff; /* Blue background for buttons */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }

        .button-container button:hover {
            background: #0056b3; /* Darker blue on hover */
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

        <h2>My Contacts</h2>
        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Message</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="contact" items="${contactDetails}">
                        <tr>
                            <td>${contact.idcontact}</td>
                            <td>${contact.username}</td>
                            <td>${contact.email}</td>
                            <td>${contact.phone}</td>
                            <td>${contact.msg}</td>
                            <td>
                                <c:set var="id" value="${contact.idcontact}"/>
                                <c:set var="name" value="${contact.username}"/>
                                <c:set var="email" value="${contact.email}"/>
                                <c:set var="phone" value="${contact.phone}"/>
                                <c:set var="msg" value="${contact.msg}"/>
                                
                                <c:url value="updateConctactus.jsp" var="contactUpdate">
                                    <c:param name="id" value="${id}"/>
                                    <c:param name="name" value="${name}"/>
                                    <c:param name="email" value="${email}"/>
                                    <c:param name="phone" value="${phone}"/>
                                    <c:param name="msg" value="${msg}"/>
                                </c:url>
                                <a href="${contactUpdate}"><button class="action-btn update-btn">Update</button></a>
                                
                                <c:url value="deleteContact.jsp" var="contactDelete">
                                    <c:param name="id" value="${id}"/>
                                    <c:param name="name" value="${name}"/>
                                    <c:param name="email" value="${email}"/>
                                    <c:param name="phone" value="${phone}"/>
                                    <c:param name="msg" value="${msg}"/>
                                </c:url>
                                <a href="${contactDelete}"><button class="action-btn delete-btn">Delete</button></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="button-container">
            <button onclick="location.href='addContact.jsp'">Add New Contact</button>
        </div>
    </div>
</body>

</html>
