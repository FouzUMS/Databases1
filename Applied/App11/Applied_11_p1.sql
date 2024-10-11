-- 1.  Assuming that the student's name is unique, display Claudette Serman’s 
--academic record. Include the unit code, unit name, year, semester, mark and 
--explained_grade in the listing. The Explained Grade column must show Fail for 
--N, Pass for P, Credit for C, Distinction for D and High Distinction for HD. 
--Order by year, within the same year order the list by semester, and within 
--the same semester order the list by the unit code.

-- SELECT * FROM UNI.UNIT NATURAL JOIN UNI.ENROLMENT NATURAL JOIN UNI.STUDENT;

--CASE ENROLGRADE
--WHEN 'N' THEN 'FAIL'
--WHEN 'P' THEN 'PASS'
--WHEN 'C' THEN 'CREDIT'
--WHEN 'D' THEN 'DISTINCTION'
--WHEN 'HD' THEN 'HIGH DISINCTION'
--END AS EXPLAINED_GRADE

-- 4. Display the unit code and unit name for units that do not have a 
--prerequisite. Order the list by unit code. There are many approaches that 
--you can take in writing an SQL statement to answer this query. You can use 
--the SET OPERATORS, OUTER JOIN and a SUBQUERY. Write SQL statements based on 
--all three approaches. 

--using outer join

SELECT
    U.UNITCODE,
    U.UNITNAME,
    P.PREREQUNITCODE
FROM
    UNI.PREREQ P
    RIGHT OUTER JOIN UNI.UNIT   U ON P.UNITCODE = U.UNITCODE
WHERE
    P.PREREQUNITCODE IS NULL
ORDER BY
    P.UNITCODE;

--using set operator MINUS

SELECT
    UNITCODE,
    UNITNAME
FROM
    UNI.UNIT
MINUS
SELECT
    P.UNITCODE, UNITNAME
FROM
        UNI.PREREQ P
    JOIN UNI.UNIT U ON P.UNITCODE = U.UNITCODE
ORDER BY
    UNITCODE;

--Using subquery
SELECT
    UNITCODE,
    UNITNAME
FROM
    UNI.UNIT
WHERE
    UNITCODE NOT IN (
        SELECT
            UNITCODE
        FROM
            UNI.PREREQ
    )
ORDER BY
    UNITCODE;