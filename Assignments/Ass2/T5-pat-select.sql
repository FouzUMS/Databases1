/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pat-select.sql

--Student ID:
--Student Name:


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


