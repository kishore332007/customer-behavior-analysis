DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  age TEXT,
  gender TEXT, 
  marital_status TEXT, 
  occupation TEXT, 
  monthly_income TEXT,
  educational_qualifications TEXT, 
  family_size TEXT, 
  latitude TEXT, 
  longitude TEXT,
  pin_code TEXT, 
  output TEXT, 
  feedback TEXT,
  unnamed_12 TEXT
);

select * from customers;

-- Count total records
SELECT COUNT(*) FROM customers;

-- Gender distribution
SELECT gender, COUNT(*) 
FROM customers 
GROUP BY gender;

-- Average family size
SELECT AVG(family_size::INT) FROM customers;

-- Income vs occupation
SELECT occupation, COUNT(*)
FROM customers
GROUP BY occupation
ORDER BY COUNT(*) DESC;

-- Feedback analysis
SELECT feedback, COUNT(*)
FROM customers
GROUP BY feedback;

-- Age distribution
SELECT age::INT, COUNT(*)
FROM customers
GROUP BY age::INT
ORDER BY age::INT;

-- Location analysis
SELECT pin_code, COUNT(*)
FROM customers
GROUP BY pin_code
ORDER BY COUNT(*) DESC;

--What is the gender distribution?
SELECT gender, COUNT(*) 
FROM customers 
GROUP BY gender;

--Which income group gives more positive feedback?
SELECT monthly_income, feedback, COUNT(*) 
FROM customers 
GROUP BY monthly_income, feedback;

--Most common education level
SELECT educational_qualifications, COUNT(*) 
FROM customers 
GROUP BY educational_qualifications 
ORDER BY COUNT(*) DESC;

--. Income distribution
SELECT monthly_income, COUNT(*) 
FROM customers 
GROUP BY monthly_income 
ORDER BY COUNT(*) DESC;

--Income vs Feedback 
SELECT monthly_income, feedback, COUNT(*) 
FROM customers 
GROUP BY monthly_income, feedback 
ORDER BY COUNT(*) DESC;
