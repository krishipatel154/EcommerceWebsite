/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cn.ecommerce.dao;

import cn.ecommerce.User;
import java.sql.*;

/**
 *
 * @author Dell
 */
public class UserDao {
    private Connection con;
    private String query;
    private PreparedStatement ps;
    private ResultSet rs;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    public User userLogin(String email, String password){
        User user = null;
        
        try{
            query = "select * from User where email=?, password=?";
            ps = this.con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,password);
            rs = ps.executeQuery();
            
            if(rs.next()){
                user = new User();
                user.setName(rs.getString("uname"));
                user.setEmail(rs.getString("email"));
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        
        return user;
    }
}
