<%@ page import="com.DBCon.DBCon" %> <%@ page import="com.model.*" %> <%@ page
import="com.dao.*" %> <%@ page import="java.util.*" %> <%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% int userId = 0;
User auth = (User) request.getSession().getAttribute("auth"); if(auth != null){
userId = (int) request.getSession().getAttribute("userId");
request.setAttribute("auth",auth); } EventDao pd = new
EventDao(DBCon.getConnection()); List<Event>
  events = pd.getAllEvents();

  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>EventFolio</title>
      <%@ include file="/includes/header.jsp" %>
      <style>
        * {
          margin: 0;
          padding: 0;
          box-sizing: border-box;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
            Oxygen, Ubuntu, Cantarell, sans-serif;
        }

        body {
          background-color: #181818;
        }

        .navbar {
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 1.5rem 5%;
          background-color: transparent;
        }

        .logo {
          display: flex;
          align-items: center;
          color: white;
          font-size: 1.5rem;
          font-weight: bold;
        }

        .logo img {
          width: 40px;
          height: 40px;
          margin-right: 10px;
        }

        .nav-links {
          display: flex;
          gap: 2rem;
          align-items: center;
        }

        .nav-links a {
          color: white;
          text-decoration: none;
          font-size: 1rem;
        }

        .nav-links a:hover {
          opacity: 0.8;
        }

        .auth-buttons {
          display: flex;
          gap: 1rem;
          align-items: center;
        }

        .log-in {
          color: white;
          text-decoration: none;
          padding: 0.5rem 1rem;
        }

        .sign-up {
          background-color: #80bcff;
          color: black;
          text-decoration: none;
          padding: 0.5rem 1.5rem;
          border-radius: 25px;
          font-weight: 500;
        }

        .hero {
          display: flex;
          padding: 4rem 5%;
          align-items: center;
          justify-content: space-between;
          min-height: 80vh;
        }

        .hero-content {
          max-width: 600px;
          color: white;
        }

        .hero-content h1 {
          font-size: 3.5rem;
          line-height: 1.2;
          margin-bottom: 1.5rem;
        }

        .hero-content p {
          font-size: 1.25rem;
          opacity: 0.9;
          margin-bottom: 2rem;
        }

        .search-bar {
          background: white;
          padding: 0.75rem;
          border-radius: 8px;
          display: flex;
          max-width: 600px;
        }

        .search-bar input {
          flex: 1;
          border: none;
          outline: none;
          font-size: 1rem;
          padding: 0.5rem;
        }

        .search-bar button {
          background-color: #80bcff;
          border: none;
          padding: 0.5rem 1.5rem;
          border-radius: 6px;
          cursor: pointer;
        }

        .hero-image {
          position: relative;
          width: 500px;
          height: 500px;
        }

        .hero-image img {
          width: 100%;
          height: 100%;
          object-fit: cover;
          border-radius: 50%;
        }

        .hero-image::after {
          content: "";
          position: absolute;
          top: -20px;
          right: -20px;
          bottom: -20px;
          left: -20px;
          background: #80bcff;
          border-radius: 50%;
          z-index: -1;
        }

        @media (max-width: 1024px) {
          .hero {
            flex-direction: column;
            text-align: center;
            gap: 3rem;
          }

          .hero-image {
            width: 400px;
            height: 400px;
          }
        }

        @media (max-width: 768px) {
          .nav-links {
            display: none;
          }

          .hero-content h1 {
            font-size: 2.5rem;
          }

          .hero-image {
            width: 300px;
            height: 300px;
          }
        }
      </style>
    </head>
    <body>
      <nav class="navbar">
        <div class="logo">EventFolio</div>
        <div class="nav-links">
          <a href="#" style="color: #80bcff">Home</a>
          <a href="#">About</a>
          <a href="#">Events</a>
          <a href="#">Notifications</a>
          <a href="#">Contact</a>
        </div>
        <div class="auth-buttons">
          <a href="login.html" class="log-in">Log In</a>
          <a href="updated_signup.html" class="sign-up">Sign up</a>
        </div>
      </nav>

      <main class="hero">
        <div class="hero-content">
          <h1>Community for Events and Collaborations.</h1>
          <p>Join in for hosting or conducting an event.</p>
          <div class="search-bar">
            <input type="text" placeholder="What events do you need?" />
            <button type="submit">
              <svg
                width="20"
                height="20"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <circle cx="11" cy="11" r="8"></circle>
                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
              </svg>
            </button>
          </div>
        </div>
        <div class="hero-image">
          <img src="event_image.jpg" alt="Student learning online" />
        </div>
      </main>
      <%@ include file="includes/footer.jsp" %>
    </body>
  </html>
</Event>
