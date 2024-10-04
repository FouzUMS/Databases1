/*
Database Teaching Team
applied10_sql_intermediate.sql

student id: 
student name:
last modified date:

*/

--1

--2
SELECT
    TO_CHAR(AVG(ENROLMARK), '999.99') as Aver_Grade
FROM
    UNI.ENROLMENT
WHERE
    UPPER(UNITCODE) = 'FIT2094'
    AND OFSEMESTER = 2
    AND TO_CHAR(OFYEAR, 'yyyy') = '2020';

--3
-- List the average mark for each offering of FIT9136. A unit offering is an 
-- instance of a particular unit in a particular semester - for example FIT1045 
-- offered in semester 1 of 2019 - is a unit offering. In the listing, include 
-- the year and semester number. Sort the result according to the year then the 
-- semester.


-- semester and year

SELECT
    TO_CHAR(AVG(ENROLMARK),
            '999.99')       AS AVER_MARK,
    TO_CHAR(OFYEAR, 'yyyy') AS YEAR,
    OFSEMESTER              AS SEMESTER
FROM
    UNI.ENROLMENT
WHERE
    UPPER(UNITCODE) = 'FIT9136'
GROUP BY
    OFSEMESTER,
    OFYEAR
ORDER BY
    OFYEAR,
    OFSEMESTER;
-- make sure that the alias is not used inside the group by, because it run first

--4
-- a. 



-- b. Repeat students are only counted once across 2019



--5




--6



--7
-- Find the total number of prerequisite units for each unit which has 
-- prerequisites. In the list, include the unit code for which the count 
-- is applicable. Order the list by unit code.

SELECT
    UNITCODE,
    TO_CHAR(COUNT(PREREQUNITCODE),
            '99') as prereq_count
FROM
UNI.PREREQ
GROUP BY
    UNITCODE
ORDER BY
    UNITCODE;

--8
--Find the total number of students whose marks are being withheld (grade is 
--recorded as WH) for each unit offered in semester 2 2020. In the listing
--include the unit code for which the count is applicable. Sort the list by 
--descending order of the total number of students whose marks are being 
--withheld, then by the unit code.

SELECT
    UNITCODE,
    to_char(COUNT(STUID)) AS NUM_STUDS
FROM
    UNI.ENROLMENT
WHERE
        ENROLGRADE = 'WH'
    AND OFSEMESTER = 2
    AND TO_CHAR(OFYEAR, 'yyyy') = '2020'
GROUP BY
    UNITCODE
ORDER BY
    NUM_STUDS DESC;
--9



--10
--Display the unit code and unit name of units which had at least 2 students 
--who were granted a deferred exam (grade is recorded as DEF) in semester 2 
--2021. Order the list by unit code.

SELECT
    count(stuid)
FROM
    UNI.ENROLMENT
WHERE
        upper(ENROLGRADE) = 'DEF'
    AND OFSEMESTER = 2
    AND TO_CHAR(OFYEAR, 'yyyy') = 2021
GROUP BY
     UNITCODE
HAVING
    COUNT(STUID) > 1;

--11
--Find the oldest student/s in FIT9132. Display the student’s id, full name 
--and the date of birth. Sort the list by student id.

SELECT
    stuid, stufname || ' ' || stulname as full_name, to_char(studob, 'dd/Mon/yyyy') as DOB
FROM
    UNI.ENROLMENT NATURAL JOIN UNI.STUDENT
WHERE studob = (select min(studob)
from UNI.ENROLMENT NATURAL JOIN UNI.STUDENT where 
    UPPER(UNITCODE) = 'FIT9132') AND
    UPPER(UNITCODE) = 'FIT9132'
    ORDER BY stuid;

--12



--13







