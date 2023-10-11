-- Queries and Filters

SELECT * FROM Students
WHERE Age > 20;

SELECT Students.FirstName, Students.LastName, Courses.CourseName FROM Students
JOIN Courses ON Students.CourseID