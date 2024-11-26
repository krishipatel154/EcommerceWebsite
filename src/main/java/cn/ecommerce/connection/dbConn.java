package cn.ecommerce.connection;

import java.sql.*;

public class dbConn {
    private static Connection conn = null;
    
    public static Connection getConn() throws ClassNotFoundException, SQLException{
        if(conn==null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","krishi@154");
            System.out.println("connected");
        }
        
        return conn;
    }
}
