# Stephanie Reeves IT2351

**Executive Summary**
The focus of this assignment was to learn how to code the INSERT, UPDATE, and DELETE statements to modify the data
in a table.

**Query Descriptions**
1. The mandate was to write a SQL statement to INSERT a record into the customers table. I opted to write a statement without    using a column list and input the values via the VALUES clause, making sure list the values in the same sequence as they      appear in the table.

2. The instruction was to write a SQL state to UPDATE the UnitPrice in the products table by increasing it by 5% where the        UnitsInStock is below 50. The only difficulty encountered was turning off the safe updates preference. I did not realize      that after turning this function off, I had to reconnect the server. Once I realized this, the query worked perfectly.

3.  The task was to copy the customers table and include the only those customers located in France. I drafted the query
    utilizing the CREATE TABLE new table_name AS format. The query was sucessful, but I did not see the new table listed. 
    I had to reconnect to the server, then the customer_copy table appeared right above the original table.

4.  The directive was to DELETE the customers located in Lille, France in the customer_copy table. There were no issues
    in designing or executing this query.

**Conclusion**
  This assignment provided an opportunity to experience the rigors of modifying data within a table and I've aquired
  the skill to tackle more complex queries of this nature.

