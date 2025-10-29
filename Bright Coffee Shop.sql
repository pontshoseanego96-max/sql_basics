--To select/return all the column names and values
SELECT*
FROM BRIGHT.COFFEE.SHOP;

--TO check the number of stores 
SELECT DISTINCT store_location
FROM BRIGHT.COFFEE.SHOP;

--to check different product
SELECT DISTINCT product_category
FROM BRIGHT.COFFEE.SHOP;

--To check product type
SELECT DISTINCT product_type
FROM BRIGHT.COFFEE.SHOP;

--checking the opening day
SELECT MIN (transaction_date) AS the_opening_day
FROM BRIGHT.COFFEE.SHOP;

--checking the last day
SELECT MAX (transaction_date) AS the_oclosing_day
FROM BRIGHT.COFFEE.SHOP;

--checking the opening time
SELECT MIN (transaction_time) AS opening_time
FROM BRIGHT.COFFEE.SHOP;

--checking the closing time
SELECT MAX (transaction_time) AS closing_time
FROM BRIGHT.COFFEE.SHOP;



-----------------------------------------------------------------------------------------

SELECT transaction_date,
  DAYNAME(transaction_date) AS day_name,
  CASE
    WHEN day_name IN ('Sat','Sun') THEN'weekend'
    ELSE 'weekday'
  END AS day_classification,
  MONTHNAME (transaction_date) AS month_name,
  --transaction_time,
    CASE
        WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' THEN '01.Morning'
        WHEN transaction_time BETWEEN '12:00:00' AND '15:59:59' THEN '02.Afternoon'
        WHEN transaction_time BETWEEN '16:00:00' AND '19:59:59' THEN '03.Evining'
        WHEN transaction_time>='20:00:00' THEN '04.NIGHT' 
    END AS time_brackets,
    HOUR(transaction_time)AS hour_of_day,
    store_location,
    product_category,
    product_detail,
    product_type,
    --unit_price,
    --transaction_qty,
    COUNT (DISTINCT transaction_id) AS number_of_transactions,
    SUM (transaction_qty*unit_price) AS revenue
  FROM BRIGHT.COFFEE.SHOP
GROUP BY ALL;

  
  

  
  
