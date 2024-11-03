/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pat-select.sql

--Student ID: Fouz Ul Mubeen
--Student Name: 35278307


/* Comments for your marker:




*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

-- SELECT Loc, sum(count) as count FROM
-- (SELECT dropoff_locn_id as Loc, count(*) as count FROM trip GROUP BY dropoff_locn_id
-- UNION
-- SELECT pickup_locn_id as Loc, count(*) as count FROM trip GROUP BY pickup_locn_id)
-- GROUP BY Loc
-- ORDER BY Loc;

SELECT
    L.LOCN_ID,
    LOCN_NAME,
    LOCN_ADDRESS,
    LOCNTYPE_DESCRIPTION,
    PICKUP_DROPOFF_COUNT
FROM
    LOCATION L
    JOIN LOCATION_TYPE LT ON L.LOCNTYPE_ID = LT.LOCNTYPE_ID
    LEFT JOIN (
        SELECT
            LOC,
            SUM(COUNTS) AS PICKUP_DROPOFF_COUNT
        FROM
            (
            SELECT
                DROPOFF_LOCN_ID AS LOC,
                COUNT(*)        AS COUNTS
            FROM
                TRIP
            GROUP BY
                DROPOFF_LOCN_ID
            UNION
            SELECT
                PICKUP_LOCN_ID AS LOC,
                COUNT(*)       AS COUNTS
            FROM
                TRIP
            GROUP BY
                PICKUP_LOCN_ID
            )
        GROUP BY
        LOC
    ) c on l.locn_id = c.loc
ORDER BY
    PICKUP_DROPOFF_COUNT DESC NULLS LAST,
    L.LOCN_ID;


/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

-- SELECT 
--     d.driver_id,
--     driver_given 
--     || ' ' 
--     || driver_family AS FULLNAME
-- FROM 
--     DRIVER d

-- AND trip_act_pickupdt >= to_date('2024-08-01', 'dd-mm-yyyy')
-- AND trip_act_dropoffdt <= to_date('2024-08-07', 'dd-mm-yyyy')

SELECT
    DRIVER_ID,
    DRIVER_GIVEN
    || ' '
    || DRIVER_FAMILY AS FULLNAME,
    CASE
        WHEN COUNT(TRIP_ID) = 0 THEN
            'No Trips'
        ELSE
            TO_CHAR(SUM((TRIP_ACT_DROPOFFDT - TRIP_ACT_PICKUPDT) * 45.42),'$9999.99')
    END AS TOTAL_PERIOD_PAYMENT
FROM
    DRIVER
    NATURAL JOIN TRIP
WHERE
    TRIP_ACT_PICKUPDT >= TO_DATE('01-Aug-2024', 'dd-Mon-yyyy') AND 
    TRIP_ACT_PICKUPDT <= TO_DATE('07-Aug-2024', 'dd-Mon-yyyy')
GROUP BY
    DRIVER_ID,
    DRIVER_GIVEN
    ||' '
    ||DRIVER_FAMILY
ORDER BY
    DRIVER_ID;
