/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pat-dml.sql

--Student ID: 35278307
--Student Name: Fouz Ul Mubeen

/* Comments for your marker:




*/

/*(a)*/
DROP SEQUENCE off_trip_seq; 

CREATE SEQUENCE off_trip_seq
    START WITH 100
        INCREMENT BY 10;

-- INSERT INTO official VALUES (off_trip_seq.nextval);
-- INSERT INTO trip VALUES (off_trip_seq.nextval);

/*(b)*/
INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    off_trip_seq.NEXTVAL,
    'Franklin',
    'Gateau',
    (SELECT cr_ioc_code FROM country_region WHERE upper(CR_NAME) = upper('St Vincent and the Grenadines')),
    NULL
);
COMMIT;

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    '1C4SDHCT9FC614231',
    'JPNQ814',
    to_date(2016,'yyyy'),
    62319,
    6,
    (SELECT vm_model_id FROM VEHICLE_MODEL WHERE upper(vm_model) = 'ALPHARD')
);
COMMIT;

/*(c)*/
INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    off_trip_seq.NEXTVAL,
    5,
    to_date('30-Jul-2024 12:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    null,
    to_date('30-Jul-2024 14:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    null,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE driver_licence = '55052a543210'),
    (SELECT locn_id FROM LOCATION WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT locn_id FROM LOCATION WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    (SELECT off_id FROM official WHERE upper(off_given) = upper('Franklin') and upper(off_family) = upper('Gateau'))
);

INSERT INTO trip (
    trip_id,
    trip_nopassengers,
    trip_int_pickupdt,
    trip_act_pickupdt,
    trip_int_dropoffdt,
    trip_act_dropoffdt,
    veh_vin,
    driver_id,
    pickup_locn_id,
    dropoff_locn_id,
    lang_iso_code,
    off_id
) VALUES (
    off_trip_seq.NEXTVAL,
    5,
    to_date('30-Jul-2024 20:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    null,
    to_date('30-Jul-2024 21:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    null,
    '1C4SDHCT9FC614231',
    (SELECT driver_id FROM driver WHERE driver_licence = '55052a543210'),
    (SELECT locn_id FROM LOCATION WHERE upper(locn_name) = upper('Porte de la Chapelle Arena')),
    (SELECT locn_id FROM LOCATION WHERE upper(locn_name) = upper('Olympic and Paralympic Village')),
    (SELECT lang_iso_code FROM language WHERE upper(lang_name) = upper('English')),
    (SELECT off_id FROM official WHERE upper(off_given) = upper('Franklin') and upper(off_family) = upper('Gateau'))
);
COMMIT;

/*(d)*/

UPDATE trip
SET
    trip_act_pickupdt = to_date('30-Jul-2024 12:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    trip_act_dropoffdt = to_date('30-Jul-2024 14:15:00', 'dd-Mon-yyyy hh24:mi:ss')
WHERE
    trip_id = (SELECT trip_id FROM trip WHERE trip_int_pickupdt = to_date('30-Jul-2024 12:30:00','dd-Mon-yyyy hh24:mi:ss') AND veh_vin = '1C4SDHCT9FC614231');
COMMIT;

DELETE FROM trip
WHERE
    trip_id = (
    SELECT trip_id FROM trip WHERE driver_id = (
        SELECT driver_id from driver WHERE upper(driver_given) = upper('Claire') AND upper(driver_family) = upper('Robert')
    )
    AND
        trip_int_pickupdt > to_date('30-Jul-2024 17:00:00', 'dd-Mon-yyyy hh24:mi:ss')
    AND
        trip_act_pickupdt IS null
    );
COMMIT;
