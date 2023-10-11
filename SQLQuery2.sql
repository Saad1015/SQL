-- Inserting Records into the Courses Table

INSERT INTO Courses (CourseID, CourseName)
VALUES (1, 'English'),
       (2, 'Urdu'),
       (3, 'Maths'),
       (4, 'Physics'),
       (5, 'Chemistry');
 -- Inserting Records into the Students Table

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