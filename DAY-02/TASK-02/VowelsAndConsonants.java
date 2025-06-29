package task2;
import java.util.Scanner;

public class VowelsAndConsonants 
{
	    public static void main(String[] args) 
	    {
	        Scanner scanner = new Scanner(System.in);

	        System.out.println("Enter a string: ");
	        String str = scanner.nextLine();

	        int vowels = 0, consonants = 0;

	        str = str.toLowerCase(); 

	        for (int i = 0; i < str.length(); i++) 
	        {
	            char ch = str.charAt(i);

	            if (ch >= 'a' && ch <= 'z') 
	            {
	                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') 
	                {
	                    vowels++;
	                } 
	                else 
	                {
	                    consonants++;
	                }
	            }
	        }

	        System.out.println("Vowels: " + vowels);
	        System.out.println("Consonants: " + consonants);

	        scanner.close();
	    }
	}
