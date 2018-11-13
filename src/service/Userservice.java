package service;


import conn.Conn;
import model.UserTable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Userservice {
    private Connection conn;
    private PreparedStatement pstmt;
    public Userservice() {
        conn = new Conn().getCon();
    }

    public boolean valiUser(UserTable user) {
        if (user == null){
            System.out.println("传入对象为空");
            return false;
        }

        try {
            pstmt = conn.prepareStatement("select * from usertable where username=? and password =?");
            pstmt.setString(1,user.getUsername());
            pstmt.setString(2,user.getPassword());
            ResultSet rs=pstmt.executeQuery();
            if(rs.next()){
                return true;
            }
            else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }
}