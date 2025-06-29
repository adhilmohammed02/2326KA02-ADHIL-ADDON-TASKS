package task1;

import java.sql.*;

public class ConnectMySQL 
{
    public static void main(String[] args) 
    {
        String url = "jdbc:mysql://localhost:3306/testdb"; 
        String user = "root"; 
        String pass = "password"; 

        try 
        {
            Connection con = DriverManager.getConnection(url, user, pass);
            System.out.println("Connected to MySQL successfully!");
            con.close();
        } 
        catch (Exception e) 
        {
            System.out.println("Connection failed!");
            e.printStackTrace();
        }
    }
}