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
      margin: 0;
      font-family: 'Arial', sans-serif;
      background-image: url('back.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .container {
      max-width: 800px;
      width: 100%;
      background: rgba(255, 255, 255, 0.9);
      padding: 30px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
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
      color: #d4edda;
    }

    .form-wrapper {
      background-color: white;
      padding: 50px 40px;
      box-shadow: rgba(0, 0, 0, 0.05) 0px 4px 20px 7px;
      border-radius: 6px;
      text-align: center;
    }

    .input, .textinput {
      width: 100%;
      padding: 15px;
      border: 2px solid #eeeeee;
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
      background-color: #03a9f4;
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
      background-color: #0381fe;
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

  <script>
    function validateForm() {
      // Get form values
      const userName = document.forms["contactForm"]["UserName"].value;
      const email = document.forms["contactForm"]["Email"].value;
      const phoneNumber = document.forms["contactForm"]["PhoneNumber"].value;
      const msg = document.forms["contactForm"]["Msg"].value;

      // Validate user name
      if (userName.trim() === "") {
        alert("Name must be filled out");
        return false;
      }

      // Validate email format
      const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
      if (!emailPattern.test(email)) {
        alert("Please enter a valid email address");
        return false;
      }

      // Validate phone number (simple 10-digit check)
      const phonePattern = /^\d{10}$/;
      if (!phonePattern.test(phoneNumber)) {
        alert("Please enter a valid 10-digit phone number");
        return false;
      }

      // Validate message
      if (msg.trim() === "") {
        alert("Message must be filled out");
        return false;
      }

      return true;
    }
  </script>
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

    <form name="contactForm" action="contactUpdate" method="post" class="form-wrapper" onsubmit="return validateForm()">
      <label for="id" style= "font-weight: bold; text-align: left;">User ID</label>
      <input class="input" name="id" placeholder="User ID" value="<%= Id %>" readonly>
      <label for="UserName" style= "font-weight: bold; text-align: left;">Name</label>
      <input class="input" name="UserName" placeholder="Please enter your name..." value="<%= Name %>" required>
      <label for="Email" style= "font-weight: bold; text-align: left;">Email</label>
      <input class="input" name="Email" placeholder="Please enter your email..." value="<%= Email %>" required>
      <label for="PhoneNumber" style= "font-weight: bold; text-align: left;">Phone Number</label>
      <input class="input" name="PhoneNumber" placeholder="Please enter your phone number..." value="<%= Phone %>" required>
      <label for="Msg" style= "font-weight: bold; text-align: left;">Message</label>
      <textarea class="textinput" name="Msg" placeholder="Please enter your query..." required><%= Msg %></textarea>
      <button type="submit" class="submit-btn">Update</button>
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
