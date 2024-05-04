--- CREATE TABLE ---------
CREATE TABLE director(
	director_id SERIAL PRIMARY KEY,
	director_account_name VARCHAR(20) UNIQUE,
	fisrt_name VARCHAR(50),
	last_name VARCHAR(50) DEFAULT 'NOT specified'
	date_of_birth DATE,
	address_id INT REFERENCES address(address_id)
)


CREATE TABLE online_sales (
	transaction_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customer(customer_id),
	film_id INT REFERENCES film(film_id),
	amount NUMERIC(5,2) NOT NULL,
	promotion_code VARCHAR(10) DEFAULT 'NONE'
)

--- INSERT INO --------------
INSERT INTO online_sales (customer_id,film_id,amount)
VALUES (269,13,10.99),(270,12,22.99)



--- ALTER TABLE
ALTER TABLE <table_name>
ALTER COLUMN <constraint_name> -- DROP ADD TYPE RENAME DEFAULT NOT NULL TABLE CONSTAINT
ADD PRIMARY KEY (column1,column2,...)

ALTER TABLE director
ALTER COLUMN director_account_name SET DEFAULT 3,
ALTER COLUMN fisrt_name TYPE TEXT,
ALTER COLUMN last_name TYPE TEXT,
ADD COLUMN middle_name TEXT,
ADD CONSTAINT constraint_1 UNIQUE(account_name)
	 

ALTER TABLE director
ALTER COLUMN director_account_name TYPE VARCHAR(30),
ALTER COLUMN last_name DROP DEFAULT,
ALTER COLUMN last_name SET NOT NULL,
ADD COLUMN email VARCHAR(40)

SELECT * FROM director

ALTER TABLE director
RENAME director_account_name TO account_name

-- Create table
CREATE TABLE emp_table 
(
	emp_id SERIAL PRIMARY KEY,
	emp_name TEXT
)

-- SELECT table
SELECT * FROM emp_table

-- Drop table
DROP TABLE emp_table

-- Insert rows
INSERT INTO emp_table
VALUES
(1,'Frank'),
(2,'Maria')

-- SELECT table
SELECT * FROM emp_table

-- Truncate table
TRUNCATE TABLE emp_table

--------------------
CREATE TABLE songs
(
	song_id SERIAL PRIMARY KEY,
	song_name VARCHAR(30) NOT NULL,
	genre VARCHAR(30) DEFAULT 'Not defined',
	price NUMERIC(4,2) CHECK(price >= 1.99),
	release_date DATE CONSTRAINT date_check CHECK(release_date BETWEEN '01-01-1950' AND CURRENT_DATE)
)

SELECT * FROM songs

INSERT INTO songs (song_name,price,release_date)
VALUES ('SQL song',0.99,'01-07-2024')

ALTER TABLE songs
DROP CONSTRAINT songs_price_check;

ALTER TABLE songs
ADD CONSTRAINT songs_price_check CHECK(price>=0.99);
