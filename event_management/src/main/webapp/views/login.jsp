<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Log in</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
          Oxygen, Ubuntu, Cantarell, sans-serif;
      }

      body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-color: #c8c8c8;
      }

      .container {
        width: 100%;
        max-width: 400px;
        padding: 2rem;
        background: white;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      }

      h1 {
        font-size: 1.5rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 1.5rem;
        text-align: center;
      }

      .form-group {
        margin-bottom: 1.25rem;
      }

      .required-field {
        font-size: 0.8rem;
        color: #666;
        margin-bottom: 0.5rem;
      }

      label {
        display: block;
        color: #333;
        font-size: 0.9rem;
        margin-bottom: 0.5rem;
      }

      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 0.75rem;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 1rem;
      }

      .password-field {
        position: relative;
      }

      .sign-in-button {
        width: 100%;
        padding: 0.75rem;
        background-color: #000;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.2s;
      }

      .sign-in-button:hover {
        background-color: #bbb;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Log in</h1>
      <div class="required-field">*Indicates required field</div>
      <form action="LoginServlet" method="post" id="loginForm">
        <div class="form-group">
          <label for="email">*Email address</label>
          <input
            type="text"
            id="email"
            class="form-control"
            placeholder="Enter your email"
            required
          />
          <div class="invalid-feedback">
            Please enter a valid email address.
          </div>
        </div>

        <div class="form-group">
          <label for="password">*Password</label>
          <div class="password-field">
            <input
              type="password"
              id="password"
              class="form-control"
              placeholder="Enter your password"
              required
            />
            <div class="invalid-feedback">Password is required.</div>
          </div>
        </div>

        <button type="submit" class="btn sign-in-button">Sign in</button>
      </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
      document
        .getElementById("loginForm")
        .addEventListener("submit", function (event) {
          event.preventDefault();
          const email = document.getElementById("email");
          const password = document.getElementById("password");
          let isValid = true;

          if (!email.value || !email.value.includes("@")) {
            email.classList.add("is-invalid");
            isValid = false;
          } else {
            email.classList.remove("is-invalid");
          }

          if (!password.value) {
            password.classList.add("is-invalid");
            isValid = false;
          } else {
            password.classList.remove("is-invalid");
          }

          if (isValid) {
            alert("Login successful!");
          }
        });
    </script>
    <%@ include file="includes/footer.jsp" %>
  </body>
</html>
