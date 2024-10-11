-- 8. Given that the payment rate for a tutorial is $42.85 per hour and the 
--payment rate for a lecture is $75.60 per hour, calculate the weekly payment 
--per type of class for each staff member in semester 1 2020. In the display, 
--include staff id, staff name, type of class (lecture - L or tutorial - T), 
--number of classes, number of hours (total duration), and weekly payment 
--(number of hours * payment rate). The weekly payment must be displayed to two 
--decimal points and right aligned. Order the list by the staff id and for a 
--given staff id by the type of class.

SELECT
    STAFFID,
    STAFFFNAME
    || ' '
    || STAFFLNAME   AS STAFF_NAME,
    CASE CLTYPE
        WHEN 'L' THEN
            'LECTURE'
        WHEN 'T' THEN
            'TUTORIAL'
    END             AS TYPE,
    COUNT(*)        AS NO_CLASSES,
    SUM(CLDURATION) AS TOT_HRS,
    CASE CLTYPE
        WHEN 'L' THEN
            lpad(TO_CHAR(SUM((CLDURATION) * 75.60),
                    '999.99'),15, ' ')
        WHEN 'T' THEN
            lpad(TO_CHAR(SUM((CLDURATION) * 42.85),
                    '999.99'),15, ' ')
    END             AS WEEKLY_PMT
FROM
         UNI.SCHEDCLASS
    NATURAL JOIN UNI.STAFF
WHERE
        OFSEMESTER = 1
    AND TO_CHAR(OFYEAR, 'yyyy') = '2020'
GROUP BY
    STAFFID,
    CLTYPE,
    STAFFFNAME
    || ' '
    || STAFFLNAME
ORDER by
    STAFFID,
    CLTYPE;
-- since cltype is in the select, we also need to add it to group by clause