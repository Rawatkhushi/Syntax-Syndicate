<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5+5hb7Z4l5Zl5ZK5z4DjG4n4iYh5lrZLhKl5QOGc"
      crossorigin="anonymous"
    />
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
          sans-serif;
      }

      body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-color: #c8c8c8;
        padding: 20px;
      }

      .container {
        background: white;
        padding: 40px;
        border-radius: 16px;
        width: 100%;
        max-width: 480px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      }

      .header {
        text-align: center;
        margin-bottom: 32px;
      }

      .header h1 {
        font-size: 24px;
        color: #333;
        margin-bottom: 8px;
      }

      .form-group {
        margin-bottom: 24px;
      }

      label {
        display: block;
        margin-bottom: 8px;
        color: #333;
        font-size: 14px;
      }

      .input-wrapper {
        position: relative;
      }

      input {
        width: 100%;
        padding: 12px;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 14px;
        transition: border-color 0.2s;
      }

      input:focus {
        outline: none;
        border-color: #000;
      }

      .helper-text {
        font-size: 12px;
        color: #666;
        margin-top: 6px;
      }

      .sign-in-button {
        width: 100%;
        padding: 14px;
        background-color: #000;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 16px;
        transition: background-color 0.2s;
      }

      .sign-in-button:hover {
        background-color: #333;
      }

      .login-link {
        text-align: right;
        margin-bottom: 32px;
      }

      .login-link a {
        color: #000;
        text-decoration: none;
        font-size: 14px;
      }

      .login-link a:hover {
        text-decoration: underline;
      }

      .error-message {
        color: red;
        font-size: 12px;
        margin-top: 6px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="login-link">
        Already have an account? <a href="login.html">Log in</a>
      </div>

      <div class="header">
        <h1>Create an account</h1>
      </div>

      <form action="SignUpServlet" method="post" id="signup-form">
        <div class="form-group">
          <label for="email">Email</label>
          <div class="input-wrapper">
            <input
              type="email"
              class="form-control"
              id="email"
              placeholder="Enter your email"
              required
            />
          </div>
          <div class="error-message" id="email-error"></div>
          <div class="helper-text">We will use your email as your user ID.</div>
        </div>

        <div class="form-group">
          <label for="phone">Phone</label>
          <div class="input-wrapper">
            <input
              type="tel"
              class="form-control"
              id="phone"
              placeholder="Enter your phone number"
            />
          </div>
          <div class="error-message" id="phone-error"></div>
          <div class="helper-text">
            We strongly recommend adding a phone number. This will help verify
            your account and keep it safe.
          </div>
        </div>

        <div class="form-group">
          <label for="password">Password</label>
          <div class="input-wrapper">
            <input
              type="password"
              class="form-control"
              id="password"
              placeholder="Enter your password"
              required
            />
          </div>
          <div class="error-message" id="password-error"></div>
        </div>

        <button type="submit" class="btn sign-in-button">Sign Up</button>
      </form>
    </div>

    <script>
      document
        .getElementById("signup-form")
        .addEventListener("submit", function (e) {
          e.preventDefault(); // Prevent form submission

          const email = document.getElementById("email");
          const phone = document.getElementById("phone");
          const password = document.getElementById("password");

          let isValid = true;

          // Email Validation
          const emailError = document.getElementById("email-error");
          if (!email.value || !/\S+@\S+\.\S+/.test(email.value)) {
            emailError.textContent = "Please enter a valid email.";
            isValid = false;
          } else {
            emailError.textContent = "";
          }

          const phoneError = document.getElementById("phone-error");
          if (phone.value && !/^\d{10}$/.test(phone.value)) {
            phoneError.textContent =
              "Please enter a valid 10-digit phone number.";
            isValid = false;
          } else {
            phoneError.textContent = "";
          }

          const passwordError = document.getElementById("password-error");
          if (!password.value || password.value.length < 6) {
            passwordError.textContent =
              "Password must be at least 6 characters.";
            isValid = false;
          } else {
            passwordError.textContent = "";
          }

          if (isValid) {
            alert("Form submitted successfully!");
          }
        });
    </script>
    <%@ include file="includes/footer.jsp" %>
  </body>
</html>
