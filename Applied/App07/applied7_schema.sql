/*
Databases Applied 7
applied7_schema.sql

student id: 35278307
student name: Fouz Ul Mubeen
last modified date: 6/9/2024

*/

-- DDL for Student-Unit-Enrolment model (using ALTER TABLE)
--

--
-- Place DROP commands at head of schema file
--
DROP TABLE student CASCADE CONSTRAINTS PURGE;
DROP TABLE enrolment CASCADE CONSTRAINTS PURGE;
DROP TABLE unit CASCADE CONSTRAINTS PURGE;
-- CASCADE CONSTRAINTS PURGE <-- use only when we know we can fully delete the DB


-- Create Tables
-- Here using both table and column constraints
--

CREATE TABLE student (
    stu_nbr     NUMBER(8) NOT NULL,
    stu_lname   VARCHAR2(50) NOT NULL,
    stu_fname   VARCHAR2(50) NOT NULL,
    stu_dob     DATE NOT NULL
);

COMMENT ON COLUMN student.stu_nbr IS
    'Student number';

COMMENT ON COLUMN student.stu_lname IS
    'Student last name';

COMMENT ON COLUMN student.stu_fname IS
    'Student first name';

COMMENT ON COLUMN student.stu_dob IS
    'Student date of birth';

/* Add STUDENT constraints here */
ALTER TABLE student AND CONSTRAINT ck_stu_nbr CHECK [stu_nbr > 10000000];


/* Add UNIT data types here */
CREATE TABLE unit (
    unit_code   ,
    unit_name   
);

COMMENT ON COLUMN unit.unit_code IS
    'Unit code';

COMMENT ON COLUMN unit.unit_name IS
    'Unit name';

/* Add UNIT constraints here */

/* Add ENROLMENT attributes and data types here */
CREATE TABLE enrolment (
    ,
    ,
    ,
    ,
    ,
    
);

COMMENT ON COLUMN enrolment.stu_nbr IS
    'Student number';

COMMENT ON COLUMN enrolment.unit_code IS
    'Unit code';

COMMENT ON COLUMN enrolment.enrol_year IS
    'Enrolment year';

COMMENT ON COLUMN enrolment.enrol_semester IS
    'Enrolment semester';

COMMENT ON COLUMN enrolment.enrol_mark IS
    'Enrolment mark (real)';

COMMENT ON COLUMN enrolment.enrol_grade IS
    'Enrolment grade (letter)';

/* Add ENROLMENT constraints here */