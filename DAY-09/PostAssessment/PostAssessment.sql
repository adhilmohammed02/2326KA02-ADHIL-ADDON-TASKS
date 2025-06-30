Step 1: Identify Entities and Attributes

Entities:


Book


-BookID (PK)


-Title


-Author


-Publisher


-ISBN


-Category


-CopiesAvailable



Member


-MemberID (PK)


-Name


-Email


-Phone


-MembershipDate



Staff

-
StaffID (PK)

-
Name
-

Role

-
Email



Loan
-

LoanID (PK)


-BookID (FK)


-MemberID (FK)
-

StaffID (FK)


-IssueDate


-DueDate


-ReturnDate

ER Diagram:
[Book]--< is loaned in >--[Loan]--< is issued by >--[Staff]
                         
                                                              ?
                         
                                                                |
                    
                                                      [Member]

Relationships:

-A Book can appear in many Loan records.


-A Member can borrow many Books (through Loan).


-A Staff member can issue many Loans.


Functional Dependencies:

BookID ? Title, Author, Publisher, ISBN, Category, CopiesAvailable


MemberID ? Name, Email, Phone, MembershipDate


StaffID ? Name, Role, Email


LoanID ? BookID, MemberID, StaffID, IssueDate, DueDate, ReturnDate

SQL create table scripts:

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(150) NOT NULL,
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    ISBN VARCHAR(20) UNIQUE,
    Category VARCHAR(50),
    CopiesAvailable INT DEFAULT 0
);

CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    MembershipDate DATE NOT NULL
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    StaffID INT,
    IssueDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);