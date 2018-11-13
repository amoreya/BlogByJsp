package conn;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
    public Connection getCon()
    {
        Connection conn = null;
        try {
              Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/myblog";
            String user="root";
            String password = "8087";
            conn = DriverManager.getConnection(url,user,password);
            System.out.println("连接数据库成功");
            } catch (Exception e) {
                e.printStackTrace();
            System.out.println("建立数据库发生错误！");
            }
            return conn;
    }

    public static void main (String[] args){
        Conn c = new Conn();
        c.getCon();
    }
}
