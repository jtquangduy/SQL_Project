SELECT * FROM customer
ORDER BY customer_id ASC

UPDATE customer
SET last_name='BROWN'
WHERE customer_id =1

UPDATE customer
SET email = LOWER(email)
WHERE customer_id =1

UPDATE customer
SET email = LOWER(email)

UPDATE payment
SET amount = amount + 1 
WHERE amount = 0.99

UPDATE payment
SET amount = 1.99 
WHERE amount = 0.99

SELECT * FROM customer
ORDER BY customer_id ASC

ALTER TABLE customer
ADD COLUMN initials VARCHAR(10)

UPDATE customer
SET initials = LEFT(first_name,1) || '.' || LEFT(last_name,1)

-------- DELETE
INSERT INTO songs (song_name,genre,price,release_date)
VALUES 
('SQL song2','Country music',2.99,'01-07-2024'),
('SQL song3','Pop music',3.99,'01-07-2024'),
('Have a talk with Data','Chill Out',5.99,'01-07-2024'),
('Tame the Data','Classical',4.99,'01-07-2024')

SELECT * FROM songs

DELETE FROM songs
WHERE genre = 'Country music'

DELETE FROM songs
WHERE song_id IN (4,5)
RETURNING song_name, song_id

DELETE FROM payment 
WHERE payment_id IN (17064,17067)
RETURNING *

------- CREATE TABLE AS 
CREATE TABLE customer_address
AS
SELECT first_name,last_name,email,address,city
FROM customer c
LEFT JOIN address a
ON c.address_id = a.address_id
LEFT JOIN city ci
ON ci.city_id = a.city_id

SELECT * FROM customer_address

CREATE TABLE customer_spendings
AS
SELECT first_name || ' ' || last_name AS name ,SUM(amount) AS total_amount
FROM customer c
LEFT JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY name

CREATE VIEW customer_spendings
AS
SELECT first_name || ' ' || last_name AS name ,SUM(amount) AS total_amount
FROM customer c
LEFT JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY name

SELECT * FROM customer_spendings

------ VIEWS
CREATE VIEW films_category 
AS
SELECT title,name,length
FROM film f
LEFT JOIN film_category fc
ON f.film_id= fc.film_id
LEFT JOIN category c 
ON fc.category_id = c.category_id
WHERE name IN ('Action','Comedy')
ORDER BY length DESC

SELECT * FROM category
SELECT * FROM film_category
SELECT * FROM film
SELECT * FROM films_category

------ MATERIALIZED VIEWS
CREATE MATERIALIZED VIEW mv_film_category
AS
SELECT title,name,length
FROM film f
LEFT JOIN film_category fc
ON f.film_id= fc.film_id
LEFT JOIN category c 
ON fc.category_id = c.category_id
WHERE name IN ('Action','Comedy')
ORDER BY length DESC

SELECT * FROM category
SELECT * FROM film_category
SELECT * FROM film
SELECT * FROM films_category

SELECT * FROM mv_film_category

UPDATE film
SET LENGTH = 192
WHERE title = 'SATURN NAME'

REFRESH MATERIALIZED view mv_film_category

CREATE VIEW v_customer_info
AS
SELECT cu.customer_id,
    cu.first_name || ' ' || cu.last_name AS name,
    a.address,
    a.postal_code,
    a.phone,
    city.city,
    country.country
     FROM customer cu
     JOIN address a ON cu.address_id = a.address_id
     JOIN city ON a.city_id = city.city_id
     JOIN country ON city.country_id = country.country_id
ORDER BY customer_id

You need to perform the following tasks:

1) Rename the view to v_customer_information.
ALTER VIEW v_customer_info
RENAME TO v_customer_information

2) Rename the customer_id column to c_id.
ALTER VIEW v_customer_information
RENAME COLUMN customer_id TO c_id

3) Add also the initial column as the last column to the view by replacing the view.
CREATE OR REPLACE VIEW v_customer_information
AS
SELECT 
    cu.customer_id as c_id,
    cu.first_name || ' ' || cu.last_name AS name,
    a.address,
    a.postal_code,
    a.phone,
    city.city,
    country.country,
    CONCAT(LEFT(cu.first_name,1),LEFT(cu.last_name,1)) as initials
FROM customer cu
JOIN address a ON cu.address_id = a.address_id
JOIN city ON a.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
ORDER BY c_id

--------- Import and Export
CREATE TABLE sales (
transaction_id SERIAL PRIMARY KEY,
customer_id INT,
payment_type VARCHAR(20),
creditcard_no VARCHAR(20),
cost DECIMAL(5,2),
quantity INT,
price DECIMAL(5,2))

C:\Users\justi\Downloads





