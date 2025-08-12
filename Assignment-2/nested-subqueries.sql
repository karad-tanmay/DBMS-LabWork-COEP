-- Find the id and title of all courses which do not require any  prerequisites.
SELECT course.course_id, course.title
FROM course, prereq
WHERE course.course_id = prereq.course_id AND prereq.prereq_id IS NULL;

-- Find the names of students who have not taken any biology dept. courses.
SELECT DISTINCT student.name
from student, takes, course
WHERE student.ID = takes.ID AND takes.course_id = course.course_id AND course.dept_name <> 'Biology';
