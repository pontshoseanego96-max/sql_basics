--SELECT* allows us to select all the rows and collumns in our dataset.

SELECT*
FROM RETAIL_SALES_DATASET
----------------------------------------------------------------------------------------------------------------
-- Comma separate the names of the columns.
--inside the select statement we specify to name the column we want in our outcome.
  
SELECT
       transaction_id,
       date,
       customer_id,
       total_amount
FROM RETAIL_SALES_DATASET;
-----------------------------------------------------------------------------------------------------------------
--We commonly use the SELECT DISTINCT to understand the different values in a specific column.
--SELECT DISTICT is a way to check diffrrent values in a specific column

SELECT DISTINCT product_category
FROM RETAIL_SALES_DATASET;
-------------------------------------------------------------------------------------------------------------------
--WHERE statement is used to filter our rows based on specific conditions
--This code will filter the rows insuring that only the ones with gender= 'male' appear on our outcome.
--Our filtering condition says we want the rows where gender='male'.


SELECT customer_id,
       date,
       total_amount,
       gender
FROM RETAIL_SALES_DATASET
WHERE gender='Male';

-----------------------------------------------------------------------------------------------------------------------

SELECT
      customer_id,
      gender,
      total_amount
FROM RETAIL_SALES_DATASET
WHERE gender='Female'AND total_amount>300;
