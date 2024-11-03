/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pat-json.sql

--Student ID: 35278307
--Student Name: Fouz Ul Mubeen


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE 
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer

SELECT
    JSON_OBJECT(
        '_id' VALUE d.DRIVER_ID,
        'name' VALUE d.DRIVER_GIVEN 
        || ' ' 
        || d.DRIVER_FAMILY,
        'licence_num' VALUE d.DRIVER_LICENCE,
        'no_of_trips' VALUE (SELECT COUNT(*) FROM trip WHERE trip.DRIVER_ID = d.DRIVER_ID),
        'suspended' VALUE d.DRIVER_SUSPENDED,
        'trips_info' VALUE JSON_ARRAYAGG(
            JSON_OBJECT(
                'trip_id' VALUE t.trip_id,
                'veh_vin' VALUE t.veh_vin,
                'pick-up' VALUE JSON_OBJECT(
                    'location_id' VALUE t.PICKUP_LOCN_ID,
                    'location_name' VALUE pl.LOCN_NAME,
                    'intended_datetime' VALUE to_char(t.TRIP_INT_PICKUPDT, 'dd-mm-yyyy'),
                    'actual_datetime' VALUE to_char(t.TRIP_ACT_PICKUPDT, 'dd-mm-yyyy')
                ),
                'drop-off' VALUE JSON_OBJECT(
                    'location_id' VALUE t.DROPOFF_LOCN_ID,
                    'location_name' VALUE dl.LOCN_NAME,
                    'intended_datetime' VALUE to_char(t.TRIP_INT_DROPOFFDT, 'dd-mm-yyyy'),
                    'actual_datetime' VALUE to_char(t.TRIP_ACT_DROPOFFDT, 'dd-mm-yyyy')
                )
            )
        )
    FORMAT JSON)
    || ','
FROM
    driver d
    INNER JOIN trip t ON d.DRIVER_ID = t.DRIVER_ID
    LEFT JOIN location pl ON t.PICKUP_LOCN_ID = pl.LOCN_ID
    LEFT JOIN location dl ON t.DROPOFF_LOCN_ID = dl.LOCN_ID
GROUP BY
    d.DRIVER_ID,
    d.DRIVER_GIVEN,
    d.DRIVER_FAMILY,
    d.DRIVER_LICENCE,
    d.DRIVER_SUSPENDED
ORDER BY
    d.DRIVER_ID;
