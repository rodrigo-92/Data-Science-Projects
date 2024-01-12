/*
Instructions:

- Answer the quetions according to the context given and requirements needed.
- Your code should be either in SQL, T-SQL or PL-SQL.
- For submission, send back to us your answers in a sql file with the following name format: sql_challenge_{NAME}_{LASTNAME}.sql
*/

/********************************************************************************************************
First question:

Given the reviews table, write a query to retrieve the average star rating for each product, grouped by month. 
The output should display the month as a numerical value, product ID, and average star rating rounded to two decimal places. 
Sort the output first by month and then by product ID.

Reviews Table:
Column Name	Type
review_id	integer
user_id	    integer
submit_date	datetime
product_id	integer
stars	    integer (1-5)

Example Input:
review_id	user_id	submit_date	        product_id	stars
6171	    123	    06/08/2022 00:00:00	50001	    4
7802	    265	    06/10/2022 00:00:00	69852	    4
5293	    362	    06/18/2022 00:00:00	50001	    3
6352	    192	    07/26/2022 00:00:00	69852	    3
4517	    981	    07/05/2022 00:00:00	69852	    2

Example Output:
mth	product	avg_stars
6	50001	3.50
6	69852	4.00
7	69852	2.50

Explanation
Product 50001 received two ratings of 4 and 3 in the month of June (6th month), resulting in an average star rating of 3.5.

*********************************************************************************************************/

/** Your code here **/

SELECT * FROM ...

/********************************************************************************************************
Second question:

Assume you're given a table containing data on Amazon customers and their spending on products in different category, 
write a query to identify the top two highest-grossing products within each category in the year 2022. 
The output should include the category, product, and total spend.

Product_spend Table:
Column Name	        Type
category	        string
product	            string
user_id	            integer
spend	            decimal
transaction_date	timestamp

Example Input:
category	product	            user_id	spend	transaction_date
appliance	refrigerator	    165	    246.00	12/26/2021 12:00:00
appliance	refrigerator	    123	    299.99	03/02/2022 12:00:00
appliance	washing machine	    123	    219.80	03/02/2022 12:00:00
electronics	vacuum	            178	    152.00	04/05/2022 12:00:00
electronics	wireless headset	156	    249.90	07/08/2022 12:00:00
electronics	vacuum	            145	    189.00	07/15/2022 12:00:00

Example Output:
category	product	            total_spend
appliance	refrigerator	    299.99
appliance	washing machine	    219.80
electronics	vacuum	            341.00
electronics	wireless headset	249.90

Explanation:
Within the "appliance" category, the top two highest-grossing products are "refrigerator" and "washing machine."
In the "electronics" category, the top two highest-grossing products are "vacuum" and "wireless headset."

********************************************************************************************************/

/** Your code here **/

SELECT * FROM ...