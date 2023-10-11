-- Names of students who are not enrolled in any course

SELECT FirstName, LastName
FROM Students
WHERE CourseID IS NULL;

-- Most popular course (the course with the most students enrolled)

SELECT Courses.CourseName, COUNT(*) AS EnrolledStudents
FROM Students
JOIN Courses ON Students.CourseID = Courses.CourseID
GROUP BY Courses.CourseName
ORDER BY EnrolledStudents DESC
LIMIT 1;

-- Students who are older than the average age of students

SELECT Students.FirstName, Students.LastName
FROM Students
WHERE Age > (SELECT AVG(Age) FROM Students);

-- Total number of students and average age for each course

SELECT Courses.CourseName, COUNT(*) AS TotalStudents, AVG(Age) AS AverageAge
FROM Students
JOIN Courses ON Students.CourseID = Courses.CourseID
GROUP BY Courses.CourseName;

-- Courses that have no students enrolled in them

SELECT Courses.CourseName
FROM Courses
LEFT JOIN Students ON Courses.CourseID = Students.CourseID
WHERE Students.StudentID IS NULL;