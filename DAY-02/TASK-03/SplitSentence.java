package task3;

import java.util.Scanner;

public class SplitSentence 
{
    public static void main(String[] args) 
    {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter a sentence: ");
        String sentence = scanner.nextLine();

        String[] words = sentence.split(" ");

        System.out.println("The words are:");
        for (int i = 0; i < words.length; i++) 
        {
            System.out.println(words[i]);
        }

        scanner.close();
    }
}
