**#Assignment 5#**
**Stephanie Reeves**

Query 1
I was tasked with drafting and executing a SELECT statement that returns the following 3 columns from the orders table:
  a.  Freight using the FORMAT funciton to return the data to one decimal place with the alias "Freight Format"
  b.  Freight using the CONVERT function to return data as an integer with the alias "Freight Convert"
  c.  Freight using the CAST function to reutrn the date as an integer with the alias "Freight Cast"
 I experienced no issues. It was simple to draft and executed just as expected. My only comment is going forward, I think 
 that I would use the CAST function over the CONVERT function because it doesn't use a comma in its syntax and it just seems
 cleaner, leaving less room for error.
 
 Query 2
 I was tasked with drafting and executing a SELECT statement that returned the following columns form the orders table:
  a.  A column using the CAST function to return the OrderDate column with its full date and time
  b.  A column that uses the CAST unction to return the OrderDate column with just the year and month
 I experienced no issues with this query. It was very simple to draft and worked as expected.

Query 3
I was tasked with drafting and executing a SELECT statement that returns the following columns from the suppliers table:
  a. The CompanyName column
  b. The first letter of each of the ContactTitle words with the alias "Abbreviated Title"
  c. The area code of the phone with the alias "Area"
This query has been the bane of my existence. I'm not ashamed to admit that I spent over 13 hours attempting to execute the directives perfectly and could not.

I literally plugged in every function listed in the text to try to get the query to return the first initial of each word in the ContactTitle column. Nothing worked! I got the first initial and a 0; so instead of Project Manager displaying as "PM"
I got "P0". I'm not also ashamed to admit that I googgled the query request to find the answer or even a hint directing me to right answer and found none. I found lots of commentary stating "SQL" is not meant for such string manipulation. Or, I 
would have to design/program a "job" that would pull in the initials. There was lots of + 1 - i where i = 0 bandied about,
but I couldn't make enough sense of it to get it to work. Even more frustrating to me is the knowledge that I could probably
draft this same query in about 5 mins. Python because I could have the query to take a "slice" of each word.

I tried to CAST the string as an integer to try to extract the intials - FAILED. I tried to TRIM away the excess letters, leaving only on the initials. Had the words been of a standard length, this would've worked. However, each Contact Title was
of varying lengths. I tried to get query to locate the space and then return the next letter only, to no avail. I was successful in getting it to return the 2nd word in full - - not just the initial. My takeaway from this overall design of the database should've been more standardized, so a query would work on each entry in the column.

Just when I thought I couldn't be more aggrevated, I began work on the area code portion of the query. I quickly realized that each entry was in a different format, so the USA phone numbers were different from the France phone numbers, which were
different. So, no query option worked on each phone number. Finally, after at least 5 hours of attempting to extract info from the parentheses, as well as drafting several IF statements with detail on how to act each Country's phone type 
(it negatively affected the Contact Titles that were return - - the number dropped to a measly 5).

I finally admitted defeat and just drated a simple SUBSTR request that started at position 2 and returned the 3 characters. 
I also included the Country column after the Area column, so the gibberish in the Area column made more sense.

My overall takeaway from this experience is that the starting database must be designed with an eye to standardization on each column, as it affects the flexibity and usefullness of the data contained therein. Because the Area column was not standardized, the data pulled from looks terrible and largely does not make sense. So while this was a painful lesson because I feel like I failed, it was a very important one - - how you design a database directly affects how you easily you can work with the data contained therein.
