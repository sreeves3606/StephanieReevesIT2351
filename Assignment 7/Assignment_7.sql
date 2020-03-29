-- create the database
CREATE DATABASE IF NOT EXISTS wellness_boutique;

-- select the database
USE wellness_boutique;

-- create the tables
CREATE TABLE student
(
  student_id                    INT            PRIMARY KEY   AUTO_INCREMENT,
  student_last_name             VARCHAR(75)    NOT NULL,      
  student_first_name			VARCHAR(50)	   NOT NULL,
  vendor_address1               VARCHAR(50),
  vendor_address2               VARCHAR(50),
  student_city                  VARCHAR(50)    NOT NULL,
  student_state                 CHAR(2)        NOT NULL,
  student_zip_code              VARCHAR(20)    NOT NULL,
  student_phone                 VARCHAR(50)
);
CREATE TABLE advisor
(
  advisor_id   INT                PRIMARY KEY,
  major_name   VARCHAR(50)        NOT NULL, 
  advisor_last_name VARCHAR(75)   NOT NULL,
  advisor_first_name VARCHAR(50)  NOT NULL
);

CREATE TABLE major
(
  major_id              INT            PRIMARY KEY,
  major_name			VARCHAR(50)    NOT NULL,
  student_id     		INT   		   NOT NULL 	REFERENCES student (student_id),
  avisor_id		        INT            NOT NULL 	REFERENCES advisor (advisor_id)
);

CREATE TABLE class
(
  class_id              INT            PRIMARY KEY,
  class_name			VARCHAR(50)    NOT NULL,
  student_id     		INT   		   NOT NULL		REFERENCES student (student_id),
  major_id		        INT            NOT NULL		REFERENCES major (major_id)
);

-- create an index
CREATE INDEX major_major_name_ix
  ON major (major_name);