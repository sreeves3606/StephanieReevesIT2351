#**IT 2351**#  
**#Stephanie Reeves#**

**#Lab 3#**

##Query Descriptions##

1.    Write a script that creates and calls a stored procedure named lowProductStock. This stored procedure should declare a
      variable and set it to the count of all the rows in the Products table with units in stock under 30. The stored
      procedure should display a result set that displays the variable in a message such as: **5 products have an inventory
      **level below 30.**
      
      This was straight forward and I encounted no issues drafting it. Previous homework assignments prepared me to recognize
      the what was required in my script.
      
 2.   Create a stored procedure that uses an input parameter to allow the user to dynamically pick the stock level in #1.
 
      The only real difference between this script and that of prob. #1 is I created a parameter variable. The presence
      of this variable allowed me to pass unit values in the Call statement, which is the dynamic component.
      
 3.   Create and call a function to return the inventory level given a product.
 
      Again, previous homework assignments prepared me to easily recognize was required in the script. This was straight
      forward and I encountered no difficulties.
      
 4.   Create a view that includeds the following:  EmployeeName, CustomerName, ProductName, OrderDate, Quantity using joins.
      Name your view: EmployeeReview.
      
      I easily drafted the script and all the required columns displayed. However, my dilemma was no data was populated
      in the view. It turned out that I was a bit overconfident in drating my JOIN statements. Once, I went back to my old
      method of listing the target columns and the tables where they resided, it became obvious how the JOINs should be
      constructed, and the view populated. I also tried to make my newbie habit of leaving the whole column names in my
      queries; so customers became *c* and order_details became *od*.
      
 5.   Create a query based on your view that groups employees and customers and sums quantity. Use IF(Grouping) to include
      subtotals for each employee.
      
      I made this script way too complicated. I initially treated this problem like #2 and I attempted to tweak the script
      for #4, but I could not get it to work. Then, after a while it dawned on me, that I didn't need to change my view 
      script at all. The EmployeeReview script should only be my data source - - so it would be my FROM source.  
      
      Once I realized this, the queries became simple to draft. I reviewed Ch. 6 and the format surrounding the use of the 
      ROLLUP command. The script worked perfectly.
      
Conclusion
These last few homework assignments have made me realize that I need more interaction with fellow coders. You learn more when you can discuss what you're working on with like-minded individuals. To this end, I joined the Tech Ladies community, as well as the GeeksforGeeks site.
