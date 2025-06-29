package PostAssessment;
import java.util.Scanner;

public class Grading 
{

    public static String getGrade(int marks) 
    {
        if (marks >= 90 && marks <= 100) 
        {
            return "A";
        } 
        else if (marks >= 80) 
        {
            return "B";
        } 
        else if (marks >= 70) 
        {
            return "C";
        } 
        else if (marks >= 60) 
        {
            return "D";
        } 
        else 
        {
            return "Fail";
        }
    }

    public static void main(String[] args) 
    {
        Scanner s = new Scanner(System.in);
        
        System.out.println("Enter student marks (0-100): ");
        int marks = s.nextInt();

        if (marks < 0 || marks > 100) 
        {
            System.out.println("Invalid marks. Please enter between 0 and 100.");
        } 
        else 
        {
            String grade = getGrade(marks);
            System.out.println("Grade: " + grade);
        }

        s.close();
    }
}
