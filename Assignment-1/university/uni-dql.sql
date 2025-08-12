USE university;

-- Find the names of all the students whose total credits are greater than 100.
SELECT name FROM student WHERE tot_cred > 100;

-- Find the course id and grades of all courses taken by any student named 'Tanaka'.
SELECT takes.course_id, takes.grade
FROM student, takes
WHERE student.ID = takes.ID AND student.name = "Tanaka";

-- Find the courses which are offered in both 'Fall' and 'Spring' semester (not necessarily in the same year).
SELECT title
FROM course, section
WHERE course.course_id = section.course_id AND semester = 'Fall'
INTERSECT
SELECT title
FROM course, section
WHERE course.course_id = section.course_id AND semester = 'Spring';

-- Find the names of all the instructors from Comp. Sci. department.
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.';

-- Find the course id and titles of all courses taught by an instructor named 'Srinivasan'
SELECT DISTINCT course.course_id, course.title
FROM course, teaches, instructor
WHERE course.course_id = teaches.course_id AND teaches.ID = instructor.ID AND instructor.name = 'Srinivasan';

-- Find the names of instructors who have taught at least one course in Spring 2009.
SELECT DISTINCT name
FROM instructor, teaches
WHERE instructor.ID = teaches.ID AND teaches.semester = 'Spring' AND teaches.year = 2009;
