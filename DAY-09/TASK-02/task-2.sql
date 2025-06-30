Entities and Attributes
 from the ER diagram:

Student (StudentID, Name, Department, DOB)


Course (CourseID, CourseName, Credits)


Enrollment (StudentID, CourseID, Semester, Grade)


Department (DepartmentID, DepartmentName)

Identify Functional Dependencies
:

Student:

StudentID - Name, Department
DOB:


Course
CourseID - CourseName,Credits


Department
:
DepartmentID - DepartmentName


Enrollment
:
StudentID, CourseID - Semester, Grade



Normalization:


1. Student Table (Already 3NF)

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    DOB DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

2. Course Table (Already 3NF)


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

3. Department Table (Already 3NF)

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

4. Enrollment Table (Already 3NF)

CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(10),
    Grade VARCHAR(2),
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);