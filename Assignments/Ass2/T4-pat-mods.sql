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

SELECT * FROM official;
DESC official;

--off_role for all CDMs changes to 'Administrator'
UPDATE official
SET 
    off_role = 'Administrator'
WHERE 
    off_cdm IS null;

SELECT * FROM official;


/*(b)*/
DROP TABLE complaint CASCADE CONSTRAINTS;

CREATE TABLE complaint (
    off_id          NUMBER(4) NOT NULL,
    comp_dt_tm      DATE NOT NULL,
    trip_id         NUMBER(4) NOT NULL,
    comp_categ      VARCHAR2(20) NOT NULL,
    comp_detail     VARCHAR2(1000) NOT NULL,
    comp_valid      VARCHAR2(5) DEFAULT NULL,
    comp_demerit    NUMBER(1)
);

COMMENT ON COLUMN complaint.off_id IS
    'Identifier for an official';

COMMENT ON COLUMN complaint.comp_dt_tm IS
    'Date and time when the complaint is made';

COMMENT ON COLUMN complaint.trip_id IS
    'Identifier for a trip';

COMMENT ON COLUMN complaint.comp_categ IS
    'The category of the complaints to be chosen';

COMMENT ON COLUMN complaint.comp_detail IS
    'Detailed description of the complaint';

COMMENT ON COLUMN complaint.comp_valid IS
    'A staff member would manually update this to "valid" after complaint triage';

COMMENT ON COLUMN complaint.comp_demerit IS
    'Number of demerit points associated with the complaint category';

ALTER TABLE complaint
    ADD CONSTRAINT complaint_pk PRIMARY KEY (
        off_id,
        comp_dt_tm
        );

ALTER TABLE complaint
    ADD CONSTRAINT chk_comp_categ check (
        comp_categ in (
            'late arrival',
            'rude behaviour',
            'poor driving',
            'failing to assist'
        )
);

ALTER TABLE complaint
    ADD CONSTRAINT chk_comp_valid check (
        comp_valid in (
            'valid',
            null
        )
    );

ALTER TABLE complaint
    ADD CONSTRAINT comp_off_id_fk FOREIGN KEY ( off_id )
        REFERENCES official ( off_id );

ALTER TABLE complaint
    ADD CONSTRAINT comp_trip_id_fk FOREIGN KEY ( trip_id )
        REFERENCES trip ( trip_id );

UPDATE complaint
    SET comp_demerit =
        CASE 
            WHEN comp_categ = 'late arrival' THEN 1
            WHEN comp_categ = 'rude behaviour' THEN 2
            WHEN comp_categ = 'poor driving' THEN 2
            WHEN comp_categ = 'failing to assist' THEN 1
            ELSE null
        END;

SELECT * FROM complaint;
DESC complaint;
