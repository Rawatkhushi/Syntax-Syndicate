package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class UserDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/event"; // Fixed the URL format
    private static final String USER = "root";
    private static final String PASSWORD = "qazwsxedc";

    private  static final  String INSERT_USER_SQL = "INSERT INTO users" + "(uname,email,country,password)" + "(?,?,?,?);";
    private static final String SELECT_USER_BY_ID = "SELECR*FROM TABLE1 WHERE ID = ?;";
    private static final String SELECT_ALL_USER = "SELECT*FROM USERS";

    public static void main(String[] args) {
        try {
            // Establishing a connection to the database
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Success");
        } catch (SQLException e) {
            // Handling SQL exception
            e.printStackTrace();
            throw new RuntimeException("Database connection failed", e); // More informative error message
        }
    }
}
