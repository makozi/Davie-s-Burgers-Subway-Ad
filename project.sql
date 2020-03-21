SELECT *
FROM orders
LIMIT 10;

/* Finding all the unique order_date values in this table.*/
SELECT DISTINCT order_date 
FROM orders
ORDER BY order_date DESC;

/* The special_instructions column stores the data where Davie’s Burgers customers leave a note for the kitchen or the delivery.*/

SELECT special_instructions
FROM orders
LIMIT 20;

/* There seem to be a lot of empty values in that column. That is because customers sometimes leave the notes section blank.*/
SELECT *
FROM orders
WHERE special_instructions IS NOT NULL;

SELECT *
FROM orders
WHERE special_instructions 
ORDER BY DESC;

SELECT  special_instructions
FROM orders
WHERE special_instructions 
LIKE '%sauce%';


SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%door%';


SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%box%';


SELECT id AS '#', special_instructions AS 'Notes'
FROM orders
WHERE special_instructions LIKE '%box%'

