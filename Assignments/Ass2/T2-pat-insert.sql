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
    9
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
    null
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
    2006,
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
    2013,
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
    2020,
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
    2018,
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
    2019,
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
    2020,
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
    2017,
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
    2016,
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
    2015,
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
    2019,
    17514,
    14,
    6
);


--------------------------------------
--INSERT INTO trip
--------------------------------------

--has 4 dates. Will need:
--to_date('______ __:__:__', 'dd-Mon-yyyy hh24:mi:ss')

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


------ end
COMMIT;
