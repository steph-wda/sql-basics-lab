--Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    order_id INTEGER,
    person_id INTEGER,
    product_name VARCHAR(20),
    product_price INTEGER, 
    quantity INTEGER
);

--Add 5 orders to the orders table.
--Make orders for at least two different people.
--person_id should be different for different people.
INSERT INTO orders (order_id, person_id, product_name, product_price, quantity)
VALUES(123,20,'Wings',1,20),
    (124 , 20 , 'Pizza' , 15, 1),
    (125 , 11 , 'Coke' , 1.5 , 3),
    (126, 11, 'Spagetti',20 , 1),
    (127,12,'Combo',30,1);

--Select all the records from the orders table. 
SELECT * FROM orders

--Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

--Calculate the total order price.
  
  --Calculates all orders in the table and gives the amount
SELECT SUM(quantity * product_price) FROM orders;
    
    --Calculates each order total price
SELECT order_id, (quantity * product_price) AS total_order_price FROM orders

--Calculate the total order price by a single person_id.
SELECT SUM(quantity * product_price) AS total_order_price FROM orders
WHERE person_id = 11

  --returns a table of what each person_id spent
SELECT person_id, SUM(quantity * product_price) FROM orders
GROUP BY person_id;
