-- Create a table Students

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
);

-- Create a table Courses

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

-- Creating the Foreign Key
ALTER TABLE Students
ADD CONSTRAINT FK_Course
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);