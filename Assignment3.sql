-- 2a) Create a table Students

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
	CourseID INT,
);



-- 2b)  Create a table Courses

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);


2c) Creating the Foreign Key
ALTER TABLE Students
ADD CONSTRAINT FK_Course
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID);



-- 3a)  Inserting Records into the Courses Table

INSERT INTO Courses (CourseID, CourseName)
VALUES (1, 'English'),
       (2, 'Urdu'),
       (3, 'Maths'),
       (4, 'Physics'),
       (5, 'Chemistry');



-- 3b)  Inserting Records into the Students Table

INSERT INTO Students (StudentID, FirstName, LastName, Age, CourseID)
VALUES (1, 'Sherlock', 'Holmes', 22, 1),
       (2, 'Shane', 'Watson', 29, 2),
       (3, 'Ali', 'Tanvir', 22, 3),
       (4, 'Sarah', 'Taylor', 24, 5),
       (5, 'Michael', 'Clarke', 20, 2),
       (6, 'Andrew', 'Trott', 26, 2),
       (7, 'Mahrukh', 'Shahzad', 21, 4),
       (8, 'Fatima', 'Abid', 25, 4),
       (9, 'Alina', 'Shabbir', 21, 1),
       (10, 'Ali', 'Hassan', 23, 5);



-- 4a)  Update the Record of a Student (Changing his Age)

UPDATE Students
SET Age = 30
WHERE StudentID = 3;


-- 4b)  Delete the Record

DELETE FROM Students
WHERE StudentID = 6;



-- 5a)  Listing students having age greater than 20

SELECT * FROM Students
WHERE Age > 20;



-- 5b)   list all students enrolled in a specific course, along with the course name

SELECT Students.FirstName, Students.LastName, Courses.CourseName FROM Students
JOIN Courses ON Students.CourseID = Courses.CourseID



-- 6a)  Counting Total Students

SELECT COUNT(*) AS TotalStudents
FROM Students;



-- 6b)  Calculation Average of Students

SELECT AVG(Age) AS AverageAge
FROM Students;



-- 7a) Names of students who are not enrolled in any course

SELECT FirstName, LastName
FROM Students
WHERE CourseID IS NULL;



-- 7b)  Most popular course (the course with the most students enrolled)

SELECT CourseName, COUNT(*) AS totalstudents
FROM Courses
JOIN Students ON Students.CourseID = Courses.CourseID
GROUP BY CourseName
ORDER BY totalstudents DESC



-- 7c)  Students who are older than the average age of students

SELECT Students.FirstName, Students.LastName
FROM Students
WHERE Age > (SELECT AVG(Age) FROM Students);



-- 7d)  Total number of students and average age for each course

SELECT Courses.CourseName, COUNT(*) AS TotalStudents, AVG(Age) AS AverageAge
FROM Students
JOIN Courses ON Students.CourseID = Courses.CourseID
GROUP BY Courses.CourseName;



-- 7e)  Courses that have no students enrolled in them

SELECT Courses.CourseName
FROM Courses
LEFT JOIN Students ON Courses.CourseID = Students.CourseID
WHERE Students.StudentID IS NULL



-- 7f)

SELECT FirstName, LastName
FROM Students 
WHERE CourseID IN (SELECT CourseID FROM Students WHERE StudentID =1);




-- 7g) List the youngest and oldest student

SELECT Courses.CourseName,
MIN(Students.Age) AS YoungestStudent,
MAX(Students.Age) AS OldestStudent
FROM Students JOIN Courses ON Students.CourseID = Courses.CourseID
GROUP BY Courses.CourseName;










