USE university;

-- Find the names of all the students whose total credits are greater than 100.
SELECT name FROM student WHERE tot_cred > 100;

-- Find the course id and grades of all courses taken by any student named 'Tanaka'.
SELECT takes.course_id, takes.grade
FROM student
INNER JOIN takes
ON student.ID = takes.ID
where name = "Tanaka";

-- Find the courses which are offered in both 'Fall' and 'Spring' semester (not necessarily in the same year).
SELECT title
FROM course
INNER JOIN section
ON course.course_id = section.course_id
WHERE semester = 'Fall'
	AND section.course_id IN (
		SELECT course_id
		FROM section
		WHERE semester = 'Spring'
    );

-- Find the names of all the instructors from Comp. Sci. department.
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.';

-- Find the course id and titles of all courses taught by an instructor named 'Srinivasan'
SELECT DISTINCT course.course_id, course.title
FROM course
JOIN teaches ON course.course_id = teaches.course_id
JOIN instructor ON teaches.ID = instructor.ID
WHERE instructor.name = 'Srinivasan';

-- Find the names of instructors who have taught at least one course in Spring 2009.
SELECT DISTINCT name FROM instructor
JOIN teaches ON instructor.ID = teaches.ID
JOIN section ON teaches.course_id = section.course_id
WHERE section.semester = 'Spring' AND section.year = 2009;
