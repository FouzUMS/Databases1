-- Generated by Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   at:        2024-08-30 15:28:09 AEST
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c

set echo on
SPOOL cust_orders_output.txt

DROP TABLE customer CASCADE CONSTRAINTS;

DROP TABLE orderline CASCADE CONSTRAINTS;

DROP TABLE orders CASCADE CONSTRAINTS;

DROP TABLE product CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE customer (
    cust_no    NUMBER(7) NOT NULL,
    cust_name  VARCHAR2(50) NOT NULL,
    cust_add   VARCHAR2(50) NOT NULL,
    cust_phone CHAR(10),
    cust_level CHAR(1) NOT NULL
);

ALTER TABLE customer
    ADD CONSTRAINT chk_custlevel CHECK ( cust_level IN ( 'B', 'G', 'S' ) );

COMMENT ON COLUMN customer.cust_no IS
    'Customer number';

COMMENT ON COLUMN customer.cust_name IS
    'customer address';

COMMENT ON COLUMN customer.cust_add IS
    'customer address';

COMMENT ON COLUMN customer.cust_phone IS
    'customer phone';

COMMENT ON COLUMN customer.cust_level IS
    'customer level, G, S, B';

ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( cust_no );

CREATE TABLE orderline (
    ol_qtyordered NUMBER NOT NULL,
    ol_priceline  NUMBER NOT NULL,
    prod_no       NUMBER(7) NOT NULL,
    order_no      NUMBER(7) NOT NULL
);

COMMENT ON COLUMN orderline.ol_priceline IS
    'price line';

COMMENT ON COLUMN orderline.prod_no IS
    'product number';

CREATE TABLE orders (
    order_no   NUMBER(7) NOT NULL,
    order_date DATE NOT NULL,
    cust_no    NUMBER(7) NOT NULL
);

COMMENT ON COLUMN orders.cust_no IS
    'Customer number';

ALTER TABLE orders ADD CONSTRAINT orders_pk PRIMARY KEY ( order_no );

CREATE TABLE product (
    prod_no        NUMBER(7) NOT NULL,
    prod_desc      VARCHAR2(50) NOT NULL,
    prod_unitprice NUMBER(5, 2) NOT NULL,
    prod_category  VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN product.prod_no IS
    'product number';

COMMENT ON COLUMN product.prod_desc IS
    'product description';

COMMENT ON COLUMN product.prod_unitprice IS
    'unit price';

COMMENT ON COLUMN product.prod_category IS
    'product category';

ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( prod_no );

ALTER TABLE orders
    ADD CONSTRAINT cust_orders_fk FOREIGN KEY ( cust_no )
        REFERENCES customer ( cust_no );

ALTER TABLE orderline
    ADD CONSTRAINT relation_4 FOREIGN KEY ( prod_no )
        REFERENCES product ( prod_no );

ALTER TABLE orderline
    ADD CONSTRAINT relation_5 FOREIGN KEY ( order_no )
        REFERENCES orders ( order_no );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

-- my code is good!

SPOOL off
set echo off