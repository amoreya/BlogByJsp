package service;

import conn.Conn;
import model.Addblog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Addblogservice {
    private Connection conn;
    private PreparedStatement pstmt;

    public Addblogservice() {
        conn = new Conn().getCon();
    }

    public boolean addBlog(Addblog blog) {
        if (blog == null) {
            System.out.println("传入对象为空");
            return false;
        }
        try {

//            if(blog.getTypeblog()!=3) {
//                System.out.println(blog);
//
//                 pstmt=conn.prepareStatement("insert into blog(zuozhe) values(blog.getZuozhe())");
//                System.out.println("不是匿名");
//              }
//              else{
//                pstmt=conn.prepareStatement("insert into blog(zuozhe) values(匿名用户)");
//                System.out.println("是匿名");
//            }

            pstmt = conn.prepareStatement("insert into blog (typeblog,title,creat,info,content,zuozhe) values(?,?,?,?,?,?)");
            pstmt.setInt(1, blog.getTypeblog());
            pstmt.setString(2, blog.getTitle());
            pstmt.setInt(3, blog.getCreat());
            pstmt.setString(4, blog.getInfo());
            pstmt.setString(5, blog.getContent());
            pstmt.setString(6, blog.getZuozhe());

            int rows = pstmt.executeUpdate();
            if (rows >= 1)
                return true;
            else
                return false;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }


    public List queryAllStu() {
        List blogs = new ArrayList();
        try {
            pstmt = conn.prepareStatement("select * from blog");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Addblog blog = new Addblog();
                blog.setTypeblog(rs.getInt("typeblog"));
                blog.setContent(rs.getString("content"));
                blog.setCreat(rs.getInt("creat"));
                blog.setInfo(rs.getString("info"));
                blog.setTitle(rs.getString("title"));
                blog.setZuozhe(rs.getString("zuozhe"));
                blogs.add(blog);
            }
            return blogs;

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }

    }


}
