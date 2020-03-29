-- create the database
CREATE DATABASE IF NOT EXISTS wellness_boutique;

-- select the database
USE wellness_boutique;

-- create the tables
CREATE TABLE supplier
(
  supplier_id                  INT            PRIMARY KEY   AUTO_INCREMENT,
  supplier_name				   VARCHAR(50),	
  contact_last_name            VARCHAR(75)    NOT NULL,      
  contact_first_name		   VARCHAR(50)    NOT NULL,
  address1            		   VARCHAR(50),
  address2                     VARCHAR(50),
  supplier_city                VARCHAR(50)    NOT NULL,
  supplier_state               CHAR(2)        NOT NULL,
  supplier_zip_code            VARCHAR(20)    NOT NULL,
  supplier_phone               VARCHAR(50)	  NOT NULL,
  supplier_email			   VARCHAR(50)
);
CREATE TABLE invoices
(
  invoice_id   INT                NOT NULL		UNIQUE,
  supplier_id  INT				  NOT NULL		REFERENCES supplier (supplier_id),
  invoice_date   DATE,       
  invoice_total  DECIMAL (9,2)    NOT NULL,
  payment_total  DECIMAL (9,2)    NOT NULL		DEFAULT  0
);

-- create an index
CREATE INDEX supplier_supplier_name_ix
  ON supplier (supplier_name);