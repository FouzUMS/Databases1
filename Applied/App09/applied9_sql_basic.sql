/*
Database Teaching Team
applied9_sql_basic.sql

student id: 
student name:
last modified date:

*/

/* Part A - Retrieving data from a single table */

SELECT
    *
FROM
    UNI.STUDENT;

-- A1


-- A2

SELECT
    *
FROM
    UNI.STUDENT
WHERE
    UPPER(STUADDRESS) LIKE '%CAULFIELD';

-- %___% ends up giving caulfield south as well.

-- A3


-- A4
-- List the student's id, surname, first name and address for those students who have
-- a surname starting with the letter S and first name which contains the letter i. Order the output by student id.

SELECT
    *
FROM
    UNI.STUDENT
WHERE
    UPPER(STULNAME) LIKE UPPER('S%')
    AND LOWER(STUFNAME) LIKE '%i%';

ORDER

-- A5
--The first three letters represent the faculty abbreviation, eg. FIT for the Faculty of Information Technology.
--The first digit of the number following the letter represents the year level.
----For example, FIT2094 is a unit code from the Faculty of IT (FIT) and the number 2 refers to a second year unit.


-- A6
--List the unit code and semester of all units that are
--offered in 2021. Order the output by unit code, and within a given unit code order by semester.

SELECT
    OFSEMESTER,
    UNITCODE
FROM
    UNI.ENROLMENT
WHERE
    TO_CHAR(OFYEAR, 'yyyy') = '2021'
ORDER BY
    UNITCODE,
    OFSEMESTER;

-- A7


-- A8
--List the student id, unit code and mark for those students who have failed
--any unit in semester 2 of 2021. Order the output by student id then order by unit code.

SELECT
    STUID,
    UNITCODE,
    ENROLMARK,
    ENROLGRADE
FROM
    UNI.ENROLMENT
WHERE
    TO_CHAR(ENROLMARK) < '50'
    AND OFSEMESTER = 2
    AND TO_CHAR(OFYEAR, 'yyyy') = '2021'
ORDER BY
    STUID,
    UNITCODE;

-- A9



/* Part B - Retrieving data from multiple tables */

-- B1
--List all the unit codes, semesters and name of chief examiners (ie.
--the staff who is responsible for the unit) for all the units that
--are offered in 2021. Order the output by semester then by unit code.

SELECT
    UNITCODE,
    OFSEMESTER,
    STAFFLNAME
FROM
    UNI.STAFF    S
    JOIN UNI.OFFERING O
    ON S.STAFFID = O.STAFFID;

-- B2


-- B3
--ist the student id, student name (firstname and surname) as one attribute and the unit name of all enrolments for semester 1 of 2021. Order the output by unit name, within a given unit name, order by student id.
SELECT
    S.STUID
    || ' '
    || S.STUFNAME
    || ' '
    || S.STULNAME AS STUDENT,
    U.UNITNAME
FROM
    UNI.ENROLMENT E JOIN UNI.STUDENT S ON E.STUID = S.STUID             
    JOIN UNI.UNIT U
    ON U.UNITCODE = E.UNITCODE
WHERE
    OFSEMESTER = 1
    AND TO_CHAR(OFYEAR, 'yyyy') = '2021';

-- B4


-- B5


-- B6


-- B7
--List the unit code, unit name and the unit code and unit name of the prerequisite units for all units in the database which have prerequisites. Order the output by unit code and prerequisite unit code.

SELECT
    U.UNITCODE,
    U.UNITNAME,
    P.UNITCODE,
    P.PREREQUNITCODE
FROM
    UNI.UNIT   U
    JOIN UNI.PREREQ P
    ON U.UNITCODE = P.UNITCODE
WHERE
    P.PREREQUNITCODE IS NOT NULL
ORDER BY
    U.UNITCODE,
    P.PREREQUNITCODE;
    
-- Tables: unit, prereq

-- B8


-- B9


-- B10