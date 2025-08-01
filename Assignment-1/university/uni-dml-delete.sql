USE university;

-- disable the safe update mode in mysql workbench before execution to avoid error (Edit->Preferences->SQL Editor->Safe Mode toggle).

delete from prereq;
delete from time_slot;
delete from advisor;
delete from takes;
delete from student;
delete from teaches;
delete from section;
delete from instructor;
delete from course;
delete from department;
delete from classroom;
