package task2;

import java.util.Scanner;

class Student {
    String name;
    int age;
    String id;

    void insertData(String name, int age, String id) {
        this.name = name;
        this.age = age;
        this.id = id;
    }

    void display() {
        System.out.println("Student Name: " + name);
        System.out.println("Student Age: " + age);
        System.out.println("Student ID: " + id);
    }
}

public class StudentData {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Student s = new Student();  // changed to Student

        System.out.print("Enter name: ");
        String name = sc.nextLine();

        System.out.print("Enter age: ");
        int age = sc.nextInt();

        sc.nextLine(); // consume newline
        System.out.print("Enter ID: ");
        String id = sc.nextLine();

        s.insertData(name, age, id);
        System.out.println("\n--- Student Data ---");
        s.display();
        
        sc.close();
    }
}