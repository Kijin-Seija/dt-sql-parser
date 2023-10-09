CREATE DATABASE school_db;
USE school_db;

CREATE TABLE teachers (name STRING, teacher_id INT);
INSERT INTO teachers VALUES ('Tom', 1), ('Jerry', 2);

CREATE TABLE students (name STRING, student_id INT) PARTITIONED BY (student_id);
INSERT INTO students VALUES ('Mark', 111111), ('John', 222222);

ANALYZE TABLE students COMPUTE STATISTICS NOSCAN;

DESC EXTENDED students;

ANALYZE TABLE students COMPUTE STATISTICS;

DESC EXTENDED students;

ANALYZE TABLE students PARTITION (student_id = 111111) COMPUTE STATISTICS;

DESC EXTENDED students PARTITION (student_id = 111111);

ANALYZE TABLE students COMPUTE STATISTICS FOR COLUMNS name;

DESC EXTENDED students name;

ANALYZE TABLES IN school_db COMPUTE STATISTICS NOSCAN;

DESC EXTENDED teachers;

ANALYZE TABLES COMPUTE STATISTICS;

DESC EXTENDED teachers;
