set ECHO ON
SPOOL applied7_alter_output.txt

ALTER TABLE unit ADD(
    unit_credit_points      NUMBER(2) DEFAULT 6 NOT NULL,
    CONSTRAINT ck_credit_points CHECK(unit_credit_points in (3,6,12))
);

COMMENT on COLUMN unit.unit_credit_points IS
    'unit credit points default 6';

drop table course CASCADE CONSTRAINTS PURGE;

CREATE TABLE course (
    course_code         CHAR(5) NOT NULL,
    course_name         VARCHAR(20) NOT NULL,
    course_total_points NUMBER(3) NOT NULL
)

COMMENT ON COLUMN course.course_code IS
    'course code as primary key';

ALTER TABLE course ADD CONSTRAINT course_pk PRIMARY KEY (course_code)

CREATE TABLE unit_course (
    unit_code char(7) NOt NULL,
    course_code CHAR(5) not null
);

COMMENT ON COLUMN unit_course.course_code IS
    'course code as primary foreign key'

COMMENT ON COLUMN unit_course.unit_code IS
    'unit code as primary foreign key'

ALTER TABLE unit_course ADD CONSTRAINT unit_course_pk PRIMARY KEY (unit_code, course_code)
ALTER TABLE unit_course ADD CONSTRAINT unit_course_uc_fk1 FOREIGN KEY (unit_code) REFERENCES unit (unit_code)
ALTER TABLE unit_course ADD CONSTRAINT unit_course_uc_fk2 FOREIGN KEY (course_code)) REFERENCES course (course_code)

SPOOL OFF
SET ECHO OFF