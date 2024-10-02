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
      background-image: url('back.jpg'); /* Background image */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      display: flex; /* Center content */
      justify-content: center;
      align-items: center;
    }

    .container {
      max-width: 800px; /* Set the same max-width */
      width: 100%; /* Full width for small screens */
      background: rgba(255, 255, 255, 0.9); /* Slightly transparent */
      padding: 30px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
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

    .text-blk {
      margin: 0;
      line-height: 25px;
    }

    .input, .textinput {
      width: 100%;
      padding: 15px;
      border: 2px solid #eeeeee;
      font-size: 16px;
      color: black;
      border-radius: 4px;
      margin-bottom: 20px; /* Add some margin for spacing */
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

  <div class="container">
    <div class="nav-menu">
       <a href="#">Dashboard</a>
       <a href="userAccount.jsp">My Account</a>
       <a href="contactUs.jsp">Contact Us</a>
       <a href="contactInsert">MyInquries</a>
     </div>

    <h2>Get in Touch</h2>

    <form name="contactForm" action="contactInsert" method="post" class="form-wrapper" onsubmit="return validateForm()">
      <input class="input" name="UserName" placeholder="Please enter first name..." required>
      <input class="input" name="Email" placeholder="Please enter email..." required>
      <input class="input" name="PhoneNumber" placeholder="Please enter phone number..." required>
      <textarea class="textinput" name="Msg" placeholder="Please enter query..." required></textarea>
      <button type="submit" class="submit-btn">Submit</button>
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
