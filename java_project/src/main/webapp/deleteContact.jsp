<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
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
      overflow-y: auto;
      max-height: 90vh;
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

    .form-wrapper {
      background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent white background for the form */
      padding: 50px 40px;
      box-shadow: rgba(0, 0, 0, 0.05) 0px 4px 20px 7px;
      border-radius: 6px;
      text-align: center;
    }

    .input, .textinput {
      width: 100%;
      padding: 15px;
      border: 2px solid #007bff; /* Match the theme */
      font-size: 16px;
      color: black;
      border-radius: 4px;
      margin-bottom: 20px;
    }

    .textinput {
      min-height: 150px;
    }

    .submit-btn {
      width: 100%;
      background-color: #f44336; /* Red color for delete */
      height: 60px;
      font-size: 20px;
      font-weight: 700;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background 0.3s;
    }

    .submit-btn:hover {
      background-color: #c62828; /* Darker red on hover */
    }

    .social-media-links {
      display: flex;
      justify-content: space-evenly;
      margin: 50px 0;
    }

    .link-img {
      width: 30px;
      height: 30px;
    }

    ::placeholder {
      color: #dadada;
    }

    @media (max-width: 768px) {
      .input, .textinput, .submit-btn {
        width: 100%;
      }
    }
  </style>
</head>
<body>
  <%
    String Id = request.getParameter("id");
    String Name = request.getParameter("name");
    String Email = request.getParameter("email");
    String Phone = request.getParameter("phone");
    String Msg = request.getParameter("msg");
  %>

  <div class="container">
    <div class="nav-menu">
       <a href="#">Dashboard</a>
       <a href="userAccount.jsp">My Account</a>
       <a href="contactUs.jsp">Contact Us</a>
       <a href="contactInsert">MyInquries</a>
     </div>

    <h2>Get in Touch</h2>

    <form action="contactDelete" method="post" class="form-wrapper">
      <input class="input" name="id" placeholder="User ID" value="<%= Id %>" readonly>
      <input class="input" name="UserName" placeholder="Name" value="<%= Name %>" readonly>
      <input class="input" name="Email" placeholder="Email" value="<%= Email %>" readonly>
      <input class="input" name="PhoneNumber" placeholder="Phone Number" value="<%= Phone %>" readonly>
      <textarea class="textinput" name="Msg" placeholder="Message" readonly><%= Msg %></textarea>
      <button type="submit" class="submit-btn">Delete</button>
    </form>

    <div class="social-media-links">
      <a href="#"><img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-twitter.png" alt="Twitter"></a>
      <a href="#"><img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-facebook.png" alt="Facebook"></a>
      <a href="#"><img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-google.png" alt="Google"></a>
      <a href="#"><img class="link-img" src="https://workik-widget-assets.s3.amazonaws.com/Footer1-83/v1/images/Icon-instagram.png" alt="Instagram"></a>
    </div>
  </div>

</body>
</html>
