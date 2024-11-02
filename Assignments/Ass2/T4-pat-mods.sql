/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pat-mods.sql

--Student ID: Fouz Ul Mubeen
--Student Name: 35278307


/* Comments for your marker:




*/

/*(a)*/
--Previous state
ALTER TABLE official
DROP CONSTRAINT chk_off_role;

ALTER TABLE official
DROP COLUMN off_role;

SELECT * FROM official;
DESC official;

--Column off_role added
ALTER TABLE official ADD (
    off_role VARCHAR2(15) DEFAULT 'General',
    constraint chk_off_role check (off_role in (
        'General',
        'Administrator',
        'Head Coach',
        'Coach',
        'Physician'
    )
    )
);

COMMENT ON COLUMN official.off_role IS
    'Role of the official';

--off_role for all CDMs changes to 'Administrator'
SELECT * FROM official;
DESC official;

UPDATE official
SET 
    off_role = 'Administrator'
WHERE 
    off_cdm IS null;

SELECT * FROM official;

/*(b)*/
