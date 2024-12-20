<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>List Users</title>
    <link rel="stylesheet" href="../css/styles.css" />
  </head>
  <body>
    <h1>List of Users</h1>
    <table border="1">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Country</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="user" items="${users}">
          <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td>
              <a href="UserControllerServlet?action=edit&id=${user.id}">Edit</a>
              <a
                href="UserControllerServlet?action=delete&id=${user.id}"
                onclick="return confirm('Are you sure?');"
                >Delete</a
              >
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <a href="add-user.jsp">Add New User</a>
  </body>
</html>
