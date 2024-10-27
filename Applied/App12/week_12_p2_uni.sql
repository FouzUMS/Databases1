SELECT
    JSON_OBJECT(
     '_id' VALUE STUID,
     'fname' VALUE STUFNAME,
     'lname' VALUE STULNAME,
     'contactInfo' VALUE JSON_OBJECT (
        'address' VALUE STUADDRESS,
        'phone' VALUE STUPHONE,
        'email' VALUE STUEMAIL),
    'dob' VALUE to_char(STUDOB, 'DD-MM-YYYY'),
    'enrolmentInfo' VALUE JSON_OBJECT(
        'unitcode' VALUE UNITCODE,
        'unitname' VALUE UNITNAME,
        'year' VALUE OFYEAR,
        'semester' VALUE OFSEMESTER,
        'mark' VALUE ENROLMARK,
        'grade' VALUE ENROLGRADE
    )
    FORMAT JSON )
    || ','
FROM
    uni.student
    NATURAL JOIN uni.enrolment
    NATURAL JOIN uni.unit;
-- GROUP BY
--     drone_id,
--     dt_code,
--     dt_model,
--     manuf_name,
--     dt_carry_kg,
--     drone_pur_date,
--     drone_pur_price,
--     drone_flight_time,
--     drone_cost_hr
-- ORDER BY
--     drone_id;