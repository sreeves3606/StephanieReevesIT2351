**#IT2351  Assignment 6#**
##Stephanie Reeves##

**1NF**
The goal was to arrange the data so there was a single, scalar value in each table cell.
I kept the data in the given columns but I unpacked the class column so each class had its own row. For example,
Joe Smith and Sue Brown, each, had three separate rows. Every column was exactly the name except for the Class column.

I was okay with the amount of duplication at this stage of the normalization process.

**2NF**
The goal was to eliminate the redundancy. I selected the primary keys and separated out columns that did not depend on the primary key. To this end, I had the following tables:
**Student**
student_id - Primary Key
last_name
first_name
street_address

**Class**
class_id - Primary Key
class_name

**Major**
major_id - Primary Key
major_name
advisor_name

**3NF**
The goal was to ensure that that every non-primary key column depends only on the primary key. Based upon this, I opted to remove the advisor_name from the Major table and place its own table, Advisor. I set up the Advisor like so:
**Advisor**
advisor_name - Primary Key
major_name - Primary Key
advisor_name

I then added the foreign keys and relationship flows (i.e. one-to-one, one-to-many, etc.)  

Having completed the process, I feel more emphasis should've been given to the technical aspect of the EER diagraming process. I had no trouble with the theory behind this assignment; it was the practical that I struggled with. Even the suggested tutorial was not helpful because it did not cover the MySQL Workbench method of creating the diagram; it focused on the theory behind normalization. It wasn't until I found the YouTube tutorial, MySQL: Creating a Entity Relationship Diagram https://www.youtube.com/watch?v=bk0n2QLLxPI, that I was successful at creating a pictorial representation of what I understood. I plan to unearth more tutorials before I have to continue with the rest of the database creation process.

