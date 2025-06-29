package MainTask;

import java.sql.*;

public class StudentDBManager 
{
    public static void main(String[] args) 
    {
    	String url = "jdbc:mysql://127.0.0.1:3306/school?serverTimezone=UTC";
    	String user = "root";
    	String password = "adhil"; // replace with actual password


        try (Connection conn = DriverManager.getConnection(url, user, password)) 
        {
            String insertSQL = "INSERT INTO students (name, grade) VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertSQL)) 
            {
                stmt.setString(1, "Alice");
                stmt.setInt(2, 90);
                stmt.executeUpdate();
                System.out.println("Student inserted.");
            }

            String querySQL = "SELECT * FROM students";
            try (Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery(querySQL)) 
            {
                while (rs.next()) 
                {
                    System.out.println(rs.getInt("id") + " - " + rs.getString("name") + " - Grade: " + rs.getInt("grade"));
                }
            }

        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
    }
}