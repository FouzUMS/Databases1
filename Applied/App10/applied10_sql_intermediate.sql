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



--9



--10




--11



--12



--13







