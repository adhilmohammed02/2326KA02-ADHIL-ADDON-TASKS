package MainTask;
import java.util.Scanner;

public class StringAnalyzer 
{
	    public static void main(String[] args) 
	    {
	        @SuppressWarnings("resource")
			Scanner s = new Scanner(System.in);
	        String str = s.nextLine();

	        String[] words = str.split("\\s+");
	        int wordCount = words.length;
	        int charCount = str.replace(" ", "").length();
	        String reversed = new StringBuilder(str).reverse().toString();
	        String longest = "";

	        for (String w : words)
	            if (w.length() > longest.length()) longest = w;

	        System.out.println("Words: " + wordCount);
	        System.out.println("Characters (no spaces): " + charCount);
	        System.out.println("Reversed: " + reversed);
	        System.out.println("Longest word: " + longest);
	    }
	}