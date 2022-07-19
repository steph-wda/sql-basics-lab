--Count how many orders were made from the USA.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

--Find the largest order total amount.
 --Will give the just the max total
SELECT MAX(total) FROM invoice;


SELECT * FROM invoice
ORDER BY total DESC
LIMIT 1;

--Find the smallest order total amount
SELECT MAX(total) FROM invoice;

SELECT * FROM invoice
ORDER BY total
LIMIT 1;

--Find all orders bigger than $5.
SELECT * FROM invoice
WHERE total > 5;

--Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice
WHERE total > 5;

--Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX', 'AZ');

--Get the average total of the orders.
SELECT AVG(total) FROM invoice;

--Get the total sum of the orders.
SELECT SUM(total) FROM invoice;

--Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- Checking it was updated
SELECT * FROM invoice
WHERE invoice_id = 5;

--Delete the invoice with an invoice_id of 1.

DELETE 
FROM invoice
WHERE invoice_id = 1;
