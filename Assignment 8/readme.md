**Stephanie Reeves
IT2351**

**Assignment 8**

**Introduction**
I had a difficult time this week. I really struggled. However, I'm happy to report that rather than becoming
frustrated and giving up, I asked for feedback. This helped to quell the anxiety that occurs when I don't understand
a concept right away and I was able to focus on debugging my code in a systematic and productive manner.

**Problem 1**
The task was to create a stored procedure that sums the freight for a customer of your choice. Be sure to document all lines of code to show your understanding of the concepts. Explain the concepts and identify the customer that you chose.

This task was straight-forward. The main code utilized was one that I'd drafted earlier in the semester. I just had to ensure the stored procedure sytax was correct. I selected CustomerID 'RATTC', which corresponds to Rattlesnake Canyon Grocery. The sum of their freight was 2134.21.

The code executed on my first attempt, which filled me with confidence. I admit that I ran a separate query to calculate the freight sum just to ensure the script was functioning properly and providing an accurate outcome result.

**Problem 2**
The task was to create a stored procedure that attempts to add a duplicate product to the products table. Handle the error
and test the outcome using an IF statement and a customized message. 

This is the aspect of the assignment that gave me agita. Prior to writing the code, I reviewed the tutorial video provided to the class. I executed the sample code from the video. It worked perfectly. 

When it came time to write code for the actual homework task, I was quite literal and utilized the ProductName column as the vehicle for adding the duplicate and unique products. The code promptly failed. I got error code 1364, with the message "SupplierID does not have a default". I wasn't using this column at all, yet it was the reason for code failing. Here's my initial code for a unique product:

USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS insertProducts;

DELIMITER //

CREATE PROCEDURE insertProducts()
BEGIN
	DECLARE duplicateProductName TINYINT DEFAULT FALSE;
    
	DECLARE CONTINUE HANDLER FOR 1062
		SET duplicateProductName = TRUE;

    INSERT INTO products(ProductName) VALUES ('Philly Cheesesteak');
    
    IF duplicateProductName = TRUE THEN
		SELECT 'Requested row was not inserted - duplicate key found.' AS message;
	ELSE
		SELECT 'Success - 1 row was inserted.' AS message;
	END IF;
END//

DELIMITER ;

Call insertProducts();

I sat for 12 hours trying to make my code work. I tried changing the column utilized to SupplierID and got the same error code of 1364. I switched to ProductID and I got same the error code.  I reviewed the products table and honed in on code line 33. I charged the datatype to a variety of other types. For example, I tried varchar(40) when using the ProductName column. I watched other stored procedure tutorials online. I also reviewed various online mySQL textbooks to get different perspectives of teaching the topic to ensure I understood the concept properly. 

Satisfied that I had a handle on the general concept of stored procedures, I knew that it was the logic behind my code that was issue - - but I couldn't put finger on how to fix it; so I emailed my professor for feedback on my code. I was extremely disappointed that I had to resort to this, but I to be humble and admit that I was stuck, if I wanted to move forward on the assignment. Prior to reaching out to my professor, I'd contacted a tutor on the SmartTutor site who told me that my code was "spot-on" and just needed to recheck my syntax, as I had a minor error or some sort. Well, I knew this was incorrect, so I sought the advice of my instructor, who was intimately familiar with our class database. 

I pleased to say my professor gave me the perfect amount of information to set me on the road to fixing the issue myself. She told me to focus on using the ProductID column, either alone or in conjunction with the ProductName column.
She noted my isert was unsuccessful because there was content required for the ProductID. Finally, she said that if there are other fields that required default values, I could caputure them, change the table properties, or add the content in my insert statement.

I did not immediately understand this advice, but it did let me know that my issue wasn't necessarily the datatype, it was the DEFAULT value in line 33 of my code. So, I got the idea to use the code snippet DESC customers; to look at the customers table, where the sample code from my professor's tutorial video worked without issue. I discovered that none of the columns had DEFAULT values and most of the datatypes were VARCHAR. When I used DESC products; on the products table, I saw that most of the columns had NULL DEFAULT values, with an assortment of INT, TINYINT, and SMALLINT datatypes.

Once I did the comparison of customers and products tables, my professor's hints began to make more sense. I opted to try to change the table properties of the products table before trying my code again. I was unsuccessful in changing the datatype of the ProductID column from INT to VARCHAR(2). At first I was disappointed, but them I recalled that the customers table had the CustomerID set at VARCHAR(5), with the privitol line of code at TINYINT DEFAULT FALSE, and the script executed without a problem; so I decided to focus on the DEFAULT values - - which is what the 1364 error code had been pointing to from the start and what my professor eluded to.

Where there was a NULL value, I set it to 0, which I learned from our text was sometimes used in place of a FALSE value.  The code used to change te DEFAULT value was:

ALTER TABLE products MODIFY SupplierID SET DEFAULT 0;

I did this for the ProductID, SupplierID, and CategoryID. It was successful on every one except for the ProductID column, which retained the NULL value in the DEFAULT column. At this point, I opted to try my code for the duplicate product scenario. The code utlized was as follows:

USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS insertProducts;

DELIMITER //

CREATE PROCEDURE insertProducts()
BEGIN
	DECLARE duplicate_ProductID INT DEFAULT FALSE;
    
	DECLARE CONTINUE HANDLER FOR 1062
		SET duplicate_ProductID = TRUE;

    INSERT INTO products(ProductID) VALUES (1);
    
    IF duplicate_ProductID = TRUE THEN
		SELECT 'Requested row was not inserted - duplicate found.' AS message;
	ELSE
		SELECT 'Success - 1 row was inserted.' AS message;
	END IF;
END//

DELIMITER ;

Call insertProducts();

It worked and I received the anticipated failure message. I was elated. However, when tried to run my code for the unique product, I received a 1452 error code which stated I couldn't add a child row. Rather than fall victim to furstration that I didn't understand what was going on again, I opted to approach the matter critically. The error stated I had a foreign key violation. I knew that I could go and add the unique product to the parent table prior to executing my code again, but that sounded too elaborate a process for this assignment. Instead, I googled a code that would cause the system not to check for the foreign key. During my 12-hour marathon session of trying to make my code work, I recall seeing info about temporarily turning codes off on the Slackoverflow site - - so I looked for this page again. I found the code SET FOREIGN_KEY_CHECKS=0; to turn the FK check off only for the session, then revert back. Once I did this, my code ran as anticipated, and successfully executed. The code used was as follows:

USE StefReevesnorthwind;

DROP PROCEDURE IF EXISTS insertProducts;

DELIMITER //

CREATE PROCEDURE insertProducts()
BEGIN
	DECLARE duplicate_ProductID INT DEFAULT FALSE;
    
	DECLARE CONTINUE HANDLER FOR 1062
		SET duplicate_ProductID = TRUE;

    INSERT INTO products(ProductID) VALUES (79);
    
    IF duplicate_ProductID = TRUE THEN
		SELECT 'Requested row was not inserted - duplicate key found.' AS message;
	ELSE
		SELECT 'Success - 1 row was inserted.' AS message;
	END IF;
END//

DELIMITER ;

Call insertProducts();

**Conclusion**
I acquired a developer's mindset this week. Successful real-world DB developers run into coding issues all the time. They don't have the option to give up and quit. They must look for soluitions. This can take the form of walking down the hall and talking over the issue with a colleague or supervisor. They can visit a coding forum to seek advice. Collaboration is as important a skill as coding - - perhaps even more so. I learned that this week and I am grateful for the lesson. I look forward to additonal opportunities to further improve my skill set. This was rather fun.








