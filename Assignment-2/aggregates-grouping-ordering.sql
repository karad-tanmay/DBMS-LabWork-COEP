USE university;

-- Find the number of instructors who have never taught any course. If the result of your query is empty, add the appropriate data (and include corresponding insert statements) to ensure the result is not empty.NOTE:  IN THE SUBMISSION  FILE, PASTE  DATA INSERTED BELOW THIS STATEMENT AS A REMARK.
SELECT COUNT(DISTINCT instructor.ID) AS InstructorCount
FROM instructor, teaches
WHERE instructor.ID NOT IN (SELECT ID FROM teaches);

-- Find the total capacity of every building in the university.
SELECT section.building, SUM(DISTINCT classroom.capacity) AS TotalCapacity
FROM section, classroom
WHERE section.building = classroom.building
GROUP BY section.building;

-- Find all departments that have at least one instructor, and list the names of the departments along with the number of instructors;   order the result in descending order of number of instructors. 
SELECT instructor.dept_name, COUNT(DISTINCT instructor.ID) AS InstructorCount
FROM instructor
GROUP BY dept_name;

-- For each student, compute the total credits they have successfully completed, i.e. total credits of courses they have taken, for which they have a non-null grade other than 'F'. Do NOT use the tot_credits attribute of student.
SELECT student.name, SUM(course.credits) AS TotalCredits
FROM student, takes, course
WHERE student.ID = takes.ID AND takes.course_id = course.course_id AND takes.grade <> 'F'
GROUP BY student.name;

SELECT DISTINCT name, tot_cred
from student;

select * from course;
select * from student;
select * from takes;