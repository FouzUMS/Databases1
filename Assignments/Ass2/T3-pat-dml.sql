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

INSERT INTO official VALUES (off_trip_seq.nextval);

INSERT INTO trip VALUES (off_trip_seq.nextval);

/*(b)*/



/*(c)*/



/*(d)*/

