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

INSERT INTO OFFICIAL (
    OFF_ID,
    OFF_GIVEN,
    OFF_FAMILY,
    CR_IOC_CODE,
    OFF_CDM
) VALUES (
    OFF_TRIP_SEQ.NEXTVAL,
    'Franklin',
    'Gateau',
    (SELECT CR_IOC_CODE FROM COUNTRY_REGION WHERE upper(CR_NAME) = upper('St Vincent and the Grenadines')),
    NULL
);

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

/*(c)*/



/*(d)*/

