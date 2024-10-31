/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pat-insert.sql

--Student ID: 35278307
--Student Name: Fouz Ul Mubeen

/* Comments for your marker:




*/

--------------------------------------
--INSERT INTO official
--------------------------------------
INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    1,
    'Jeff',
    'Romero',
    'LBA', 
    null
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    2,
    'Chloe',
    'Adams',
    'GEO', 
    null
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    3,
    'Rina',
    'Suzuki',
    'MAD', 
    null
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    4,
    'Liam',
    'O’Connor',
    'LBA', 
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    5,
    'Amira',
    'Khalil',
    'MAD', 
    3
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    6,
    'Mateo',
    'Garcia',
    'KGZ', 
    null
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    7,
    'Emily',
    null,
    'LBA', 
    1
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    8,
    'Samuel',
    'White',
    'ESA', 
    null
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    9,
    'Leila',
    'Silva',
    'GEO', 
    2
);

INSERT INTO official (
    off_id,
    off_given,
    off_family,
    cr_ioc_code,
    off_cdm 
) VALUES (
    10,
    'Ivan',
    'Petrov',
    'KGZ', 
    6
);


--------------------------------------
--INSERT INTO vehicle
--------------------------------------

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    19781671156197253,
    'GETY715',
    to_date(2006,'yyyy'),
    141010,
    8,
    8
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    28672365318721865,
    'JRWB917',
    to_date(2013,'yyyy'),
    63462,
    12,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    36482739282080328,
    'GBRW036',
    to_date(2020,'yyyy'),
    14282,
    45,
    3
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    82738263826325651,
    'MUBP610',
    to_date(2018,'yyyy'),
    20601,
    7,
    7
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    29887265654151819,
    'JUNV851',
    to_date(2019,'yyyy'),
    17082,
    14,
    6
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    28947294463762929,
    'KUMV815',
    to_date(2020,'yyyy'),
    19728,
    7,
    7
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    28786826725265628,
    'LWBQ462',
    to_date(2017,'yyyy'),
    36082,
    14,
    6
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    86125279171080189,
    'HCEP646',
    to_date(2016,'yyyy'),
    30167,
    12,
    1
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    27492267998911716,
    'LPUB010',
    to_date(2015,'yyyy'),
    26534,
    8,
    9
);

INSERT INTO vehicle (
    veh_vin,
    veh_rego,
    veh_year,
    veh_curr_odo,
    veh_nopassengers,
    vm_model_id
) VALUES (
    99173626516397281,
    'THBL726',
    to_date(2019,'yyyy'),
    17514,
    14,
    6
);


--------------------------------------
--INSERT INTO trip
--------------------------------------

--has 4 dates. Will need:
--to_date('______ __:__:__', 'dd-Mon-yyyy hh24:mi:ss')

-- INSERT INTO trip (
--     trip_id,
--     trip_nopassengers,
--     trip_int_pickupdt,
--     trip_act_pickupdt,
--     trip_int_dropoffdt,
--     trip_act_dropoffdt,
--     veh_vin,
--     driver_id,
--     pickup_locn_id,
--     dropoff_locn_id,
--     lang_iso_code,
--     off_id
-- ) VALUES (
--     1,
--     6,
--     to_date('22-Jul-2024 09:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
--     to_date('22-Jul-2024 09:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
--     to_date('22-Jul-2024 13:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
--     to_date('22-Jul-2024 13:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
--     82738263826325651,
--     2002,
--     105,
--     110,
--     'ml',
--     5
-- );

--1
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
    1,
    6,
    to_date('22-Jul-2024 09:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 09:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 13:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 13:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    82738263826325651,
    2002,
    105,
    110,
    'ml',
    5
);

--2
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
    2,
    13,
    to_date('22-Jul-2024 09:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 09:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 13:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 13:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    28786826725265628,
    2007,
    105,
    110,
    'fr',
    5
);

--3
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
    3,
    4,
    to_date('20-Jul-2024 07:20:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('20-Jul-2024 07:35:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('20-Jul-2024 08:40:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('20-Jul-2024 08:45:00', 'dd-Mon-yyyy hh24:mi:ss'),
    82738263826325651,
    2002,
    103,
    120,
    'zh',
    2
);

--4
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
    4,
    13,
    to_date('11-Aug-2024 15:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('11-Aug-2024 15:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('12-Aug-2024 01:13:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('12-Aug-2024 01:13:00', 'dd-Mon-yyyy hh24:mi:ss'),
    28786826725265628,
    2013,
    105,
    107,
    'fr',
    1
);

--5
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
    5,
    6,
    to_date('11-Aug-2024 15:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('11-Aug-2024 15:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('12-Aug-2024 01:13:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('12-Aug-2024 01:13:00', 'dd-Mon-yyyy hh24:mi:ss'),
    82738263826325651,
    2004,
    105,
    107,
    'sd',
    1
);

--6
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
    6,
    7,
    to_date('23-Jul-2024 17:05:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('23-Jul-2024 17:05:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('23-Jul-2024 17:50:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('23-Jul-2024 17:50:00', 'dd-Mon-yyyy hh24:mi:ss'),
    27492267998911716,
    2002,
    101,
    110,
    'fr',
    6
);

--7
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
    7,
    9,
    to_date('22-Jul-2024 19:40:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 19:40:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 23:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('22-Jul-2024 23:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    86125279171080189,
    2004,
    105,
    110,
    'fr',
    2
);

--8
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
    8,
    7,
    to_date('26-Jul-2024 10:10:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('26-Jul-2024 10:10:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('26-Jul-2024 10:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('26-Jul-2024 10:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    27492267998911716,
    2002,
    104,
    110,
    'sd',
    1
);

--9
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
    9,
    11,
    to_date('24-Jul-2024 10:10:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('24-Jul-2024 10:10:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('25-Jul-2024 18:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('25-Jul-2024 18:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    86125279171080189,
    2013,
    105,
    110,
    'zh',
    1
);

--10
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
    10,
    7,
    to_date('21-Jul-2024 18:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('21-Jul-2024 18:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('21-Jul-2024 19:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('21-Jul-2024 19:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    19781671156197253,
    2013,
    103,
    107,
    'zh',
    2
);

--11
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
    11,
    6,
    to_date('21-Jul-2024 12:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('21-Jul-2024 12:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('21-Jul-2024 13:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('21-Jul-2024 13:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    28947294463762929,
    2007,
    101,
    110,
    'ne',
    3
);


--12
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
    12,
    7,
    to_date('23-Jul-2024 17:05:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('23-Jul-2024 17:05:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('23-Jul-2024 17:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('23-Jul-2024 17:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    28947294463762929,
    2002,
    101,
    107,
    'fr',
    4
);

--13
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
    13,
    10,
    to_date('27-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('27-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('27-Jul-2024 09:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('27-Jul-2024 09:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    86125279171080189,
    2004,
    110,
    101,
    'fr',
    4
);

--14
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
    14,
    13,
    to_date('27-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('27-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('27-Jul-2024 09:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('27-Jul-2024 09:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    99173626516397281,
    2015,
    110,
    101,
    'fr',
    4
);

--15
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
    15,
    6,
    to_date('25-Jul-2024 11:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('25-Jul-2024 11:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('25-Jul-2024 11:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('25-Jul-2024 11:40:00', 'dd-Mon-yyyy hh24:mi:ss'),
    82738263826325651,
    2007,
    105,
    110,
    'id',
    5
);

--16
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
    16,
    6,
    to_date('28-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('28-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('28-Jul-2024 07:45:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('28-Jul-2024 07:45:00', 'dd-Mon-yyyy hh24:mi:ss'),
    19781671156197253,
    2013,
    105,
    110,
    'fa',
    8
);

--17
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
    17,
    5,
    to_date('28-Jul-2024 17:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('28-Jul-2024 17:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('28-Jul-2024 19:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('28-Jul-2024 19:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    82738263826325651,
    2015,
    101,
    120,
    'ne',
    4
);

--18
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
    18,
    35,
    to_date('26-Jul-2024 20:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('26-Jul-2024 20:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('26-Jul-2024 20:45:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('26-Jul-2024 20:45:00', 'dd-Mon-yyyy hh24:mi:ss'),
    36482739282080328,
    2003,
    104,
    110,
    'zh',
    1
);

--19
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
    19,
    13,
    to_date('29-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('29-Jul-2024 07:00:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('29-Jul-2024 08:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('29-Jul-2024 08:15:00', 'dd-Mon-yyyy hh24:mi:ss'),
    28786826725265628,
    2004,
    103,
    120,
    'fa',
    8
);

--20
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
    20,
    10,
    to_date('29-Jul-2024 18:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('29-Jul-2024 18:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('29-Jul-2024 19:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    to_date('29-Jul-2024 19:30:00', 'dd-Mon-yyyy hh24:mi:ss'),
    86125279171080189,
    2002,
    103,
    110,
    'ml',
    6
);


------ end
COMMIT;
