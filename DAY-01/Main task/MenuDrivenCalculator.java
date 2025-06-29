package MainTask;

import java.util.Scanner;

public class MenuDrivenCalculator 
{
    public static int add(int a, int b) 
    {
        return a + b;
    }

    public static int subtract(int a, int b) 
    {
        return a - b;
    }

    public static int multiply(int a, int b) 
    {
        return a * b;
    }

    public static int divide(int a, int b) 
    {
        if (b == 0) 
        {
            System.out.println("Cannot divide by zero!");
            return 0;
        }
        return a / b;
    }

    public static void main(String[] args) 
    {
        Scanner s = new Scanner(System.in);
        int choice, c, d, result;

        do 
        {
            System.out.println("\n--- Calculator Menu ---");
            System.out.println("1. Add");
            System.out.println("2. Subtract");
            System.out.println("3. Multiply");
            System.out.println("4. Divide");
            System.out.println("5. Exit");
            System.out.print("Enter your choice: ");
            choice = s.nextInt();
        
            if (choice >= 1 && choice <= 4) 
            {
                System.out.print("Enter first number: ");
                c = s.nextInt();
                System.out.print("Enter second number: ");
                d = s.nextInt();

                switch (choice) 
                {
                    case 1:
                        result = add(c, d);
                        System.out.println("Result: " + result);
                        break;
                    case 2:
                        result = subtract(c, d);
                        System.out.println("Result: " + result);
                        break;
                    case 3:
                        result = multiply(c, d);
                        System.out.println("Result: " + result);
                        break;
                    case 4:
                        result = divide(c, d);
                        System.out.println("Result: " + result);
                        break;
                }
            } 
            else if (choice != 5) 
            {
                System.out.println("Invalid choice! Try again.");
            }

        } 
        while (choice != 5); 
        System.out.println("Calculator exited. Thank you!");
        s.close(); 
    } 
}