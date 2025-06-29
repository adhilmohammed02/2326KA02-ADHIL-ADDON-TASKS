package PostAssessment;
import java.util.Scanner;

public class MiniAddressBook
{
    public static void main(String[] args) 
    {
        Scanner sc = new Scanner(System.in);
        String[] names = new String[5];
        String[] phones = new String[5];

        for (int i = 0; i < 5; i++) 
        {
            System.out.print("Enter name: ");
            names[i] = sc.nextLine();
            System.out.print("Enter phone: ");
            phones[i] = sc.nextLine();
        }

        System.out.println("\nAddress Book:");
        for (int i = 0; i < 5; i++) 
        {
            System.out.println(names[i] + " - " + phones[i]);
        }
    }
}
