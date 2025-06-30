Entities and Key Attributes:


Student


-StudentID (PK)


-Name


-DOB

-
Email


-DepartmentID (FK)



Department
-DepartmentID (PK)


-DepartmentName



Course


-CourseID (PK)


-CourseName


-Credits


-DepartmentID (FK)


Registration


-RegistrationID (PK)


-StudentID (FK)


-CourseID (FK)


-Semester


-Grade



ER Diagram:
 
Relationships:

-A Department offers multiple Courses


-A Student belongs to one Department


-A Student can register for multiple Courses 

-A Course can be taken by many Students

ER Diagram (textual format):

[Department]---< offers >---[Course]
     
            ?                                                                 ?
     
              |                                                                     |
 
belongs to                                               registered in
     
              |                                                                     |

[Student]---< registers >---[Registration]

Functional Dependencies & 3NF

Functional Dependencies (FDs):

StudentID ? Name, DOB, Email, DepartmentID


DepartmentID ? DepartmentName


CourseID ? CourseName, Credits, DepartmentID


RegistrationID ? StudentID, CourseID, Semester, Grade


Composite key: (StudentID, CourseID, Semester) ? Grade 

SQL Table Definitions (Normalized to 3NF):

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DOB DATE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Registration (
    RegistrationID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Semester VARCHAR(10),
    Grade VARCHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);