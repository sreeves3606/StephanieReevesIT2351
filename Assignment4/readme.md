**#Assignment 4#**

**Query 1**
I was tasked with drafting and executing a SELECT statement that returns the following:
a) The count of the number of orders in the Orders table with an alias
b) The sum of the freight column in the Orders table with an alias
c) The average freight per order (calculate)
d) Round your calculations to 2 decimals

A simple statement that provided 3 columns was drafted. The first column was a count of orderID in the Orders table. The second column was the sum total of the freight for the orders found in the Orders table, rounded to 2 decimal places. The third column was the average freight per order, rounded to 2 decimal places. No issues were encountered.

**Query 2**
I was tasked with drafting a SELECT statement that returns one row for each category that has products with the following columns:
a) The CategoryName column from the Categories table
b) The count of the products in the Products table for each category
c) The unit price of the most expensive product in the Products table for each category
d) The results set sorted so the categories with the most products display first

This statement took me the longest to execute successfully. I had trouble with the sort requirement. I grouped the result set properly by categor. It took me a bit to realize that I need a 2nd sort statement, ORDER BY, to also display the results set with the most products first.

**Query 3**
I was tasked with writing a SELECT statement that answers: *What is the total quantity purchased for each product within in each category?* Return with these columns"
a) The CategoryName column from the Category table
b) The ProductName column from the Products table
c) The total quantity purchase for each product with orders in the order_details table
d) Use the IF(Grouping) and WITH ROLLUP to include rows that give a summary for each category name as well as a row that gives the grand total

Going into this exercise I was dreading this type of statement, but it actually was fairly simply. The trick was to build and test each componenet separately first, so you have confidence in your syntax before you attempt to put it all together. I finished this statement quickly. I just had an issue with its appearance, which I'm not certain would be a concern in a real-life scenario. I wanted some space or an empty row around the totals for each category total. I could not figure out how to do that. It's a minor point to be certain, but I thought that it would make the results easier to see.

**Query 4**
Write a SELECT statement that answers this question: *Which product have a list price that's greater than the average unit price for all products?*  Return the ProductName and List Price columns for each product. Sort the result set by the List Price column in descending sequence. Be sure to use a subquery.

I found this statement to be very easy to draft and execute. My only issue with this execise is I felt like the average List Price should be displayed somewhere as proof that my subquery was functioning properly. I tested this fact in a separate query that showed what the average was. This was beyond the scope of what was required, but had I a few more hours to play with the statement, I figured out a way to include a summary row where the average List Price could've been displayed.


