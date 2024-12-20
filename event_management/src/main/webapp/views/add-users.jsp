<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Add User</title>
    <link rel="stylesheet" href="../css/styles.css" />
  </head>
  <body>
    <h1>Add New User</h1>
    <form action="UserControllerServlet" method="post">
      <input type="hidden" name="action" value="add" />
      <label for="name">Name:</label><br />
      <input type="text" id="name" name="name" required /><br /><br />
      <label for="email">Email:</label><br />
      <input type="email" id="email" name="email" required /><br /><br />
      <label for="country">Country:</label><br />
      <input type="text" id="country" name="country" required /><br /><br />
      <label for="password">Password:</label><br />
      <input
        type="password"
        id="password"
        name="password"
        required
      /><br /><br />
      <button type="submit">Add User</button>
    </form>
    <a href="list-users.jsp">Back to List</a>
  </body>
</html>
