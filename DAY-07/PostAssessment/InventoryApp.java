package PostAssessment;

import java.sql.*;
import java.util.Scanner;

public class InventoryApp 
{
    static final String URL = "jdbc:mysql://127.0.0.1:3306/inventory_db";
    static final String USER = "root";
    static final String PASS = "adhil_adhil"; 

    public static void main(String[] args) 
    {
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
             Scanner sc = new Scanner(System.in)) 
        {

            while (true) 
            {
                System.out.println("\n1. Add Product\n2. View All\n3. Search by Name\n4. Exit");
                System.out.print("Choose: ");
                int choice = sc.nextInt();
                sc.nextLine(); 

                if (choice == 1) 
                {
                    System.out.print("Product name: ");
                    String name = sc.nextLine();
                    System.out.print("Price: ");
                    double price = sc.nextDouble();
                    String sql = "INSERT INTO products (name, price) VALUES (?, ?)";
                    try (PreparedStatement ps = conn.prepareStatement(sql)) 
                    {
                        ps.setString(1, name);
                        ps.setDouble(2, price);
                        ps.executeUpdate();
                        System.out.println("Product added.");
                    }
                } 
                else if (choice == 2) 
                {
                    String sql = "SELECT * FROM products";
                    try (Statement st = conn.createStatement();
                         ResultSet rs = st.executeQuery(sql)) 
                    {
                        while (rs.next()) 
                        {
                            System.out.println(rs.getInt("id") + ": " + rs.getString("name") + " - $" + rs.getDouble("price"));
                        }
                    }
                } 
                else if (choice == 3) 
                {
                    System.out.print("Search name: ");
                    String name = sc.nextLine();
                    String sql = "SELECT * FROM products WHERE name LIKE ?";
                    try (PreparedStatement ps = conn.prepareStatement(sql)) 
                    {
                        ps.setString(1, "%" + name + "%");
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) 
                        {
                            System.out.println(rs.getInt("id") + ": " + rs.getString("name") + " - $" + rs.getDouble("price"));
                        }
                    }
                } 
                else 
                {
                    break;
                }
            }

        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
    }
}