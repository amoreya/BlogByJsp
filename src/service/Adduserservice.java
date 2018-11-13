package service;

import conn.Conn;

import model.Adduser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class Adduserservice {

    private Connection conn;
    private PreparedStatement pstmt;
    public Adduserservice() {
        conn = new Conn().getCon();
    }

    public boolean addUser(Adduser add) {
        try {
            pstmt = conn.prepareStatement("insert into usertable(username,password) values(?,?)");
            pstmt.setString(1,add.getUsername());
            pstmt.setString(2, add.getPassword());

            pstmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }



}
