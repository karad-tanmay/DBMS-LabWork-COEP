-- Find the id and title of all courses which do not require any  prerequisites.
SELECT course_id, title
FROM course
WHERE course_id NOT IN (SELECT course_id from prereq);

-- Find the names of students who have not taken any biology dept. courses.
SELECT name
FROM student
WHERE ID NOT IN (
	SELECT takes.ID
    FROM takes, course
    WHERE takes.course_id = course.course_id AND course.dept_name = 'Biology'
);
