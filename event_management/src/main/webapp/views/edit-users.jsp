<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Edit User</title>
    <link rel="stylesheet" href="../css/styles.css" />
  </head>
  <body>
    <h1>Edit User</h1>
    <form action="UserControllerServlet" method="post">
      <input type="hidden" name="action" value="update" />
      <input type="hidden" name="id" value="${user.id}" />
      <label for="name">Name:</label><br />
      <input
        type="text"
        id="name"
        name="name"
        value="${user.name}"
        required
      /><br /><br />
      <label for="email">Email:</label><br />
      <input
        type="email"
        id="email"
        name="email"
        value="${user.email}"
        required
      /><br /><br />
      <label for="country">Country:</label><br />
      <input
        type="text"
        id="country"
        name="country"
        value="${user.country}"
        required
      /><br /><br />
      <label for="password">Password:</label><br />
      <input
        type="password"
        id="password"
        name="password"
        value="${user.password}"
        required
      /><br /><br />
      <button type="submit">Update User</button>
    </form>
    <a href="list-users.jsp">Back to List</a>
  </body>
</html>
