
package evoting.dbutil;
import java.sql.*;
import javax.swing.JOptionPane;

public class DBConnection {
    
 private static Connection conn;
  static
  {
      try
        {
          Class.forName("oracle.jdbc.OracleDriver");
          conn=DriverManager.getConnection("jdbc:oracle:thin:@//DESKTOP-K1G36F7:1521/XE","Rupesh","abc");
          System.out.println("Connection opened!");
        }
      catch(Exception ex)
      {
          JOptionPane.showMessageDialog(null,"DB Error in opening connection in DBConnection!","Error",JOptionPane.ERROR_MESSAGE);  
           ex.printStackTrace();
      }
  }
  public static Connection getConnection()
  {
      return conn;
  }
  public static void closeConnection()
  {
      try
      {
          conn.close();
          System.out.println("Connection Closed!");
      }
      catch(SQLException ex)
      {
         
          JOptionPane.showMessageDialog(null,"DB Error in closing connection in DBConnection!","Error",JOptionPane.ERROR_MESSAGE);  
           ex.printStackTrace();
      }
  }
}
