## Groupping and aggregation

## COUNT

Counting the number of records

`SELECT COUNT(*) FROM birdstrikes`

### Exercise 0: Let's find a column where we have nulls. How you do that?

Says 'state' can be NULL, so let's try:

`SELECT state FROM birdstrikes WHERE state IS NULL`

Let's try 'reported_date'

`SELECT reported_date FROM birdstrikes WHERE reported_date IS NULL`

Now let's count 'reported_date'

`SELECT COUNT(reported_date) FROM birdstrikes`

How do we list the distinct states ?

`SELECT DISTINCT(state) FROM birdstrikes`

Count number of distinct states

`SELECT COUNT(DISTINCT(state)) FROM birdstrikes`

### Exercise 1: How many distinct 'aircraft' we have in the database?

## MAX, AVG, SUM

The highest repair cost of a birdstrike accident

`SELECT MAX(cost) FROM birdstrikes`

The average repair cost of a birdstrike accident

`SELECT MAX(cost) FROM birdstrikes`

The sum of all repair costs of birdstrikes accidents

`SELECT SUM(cost) FROM birdstrikes`

Aliassing

`SELECT MAX(cost) as higest_cost FROM birdstrikes`

Speed in this database is measured in KNOTS. Let's transform to KMH. 1 KNOT = 1.853 KMH

`SELECT (AVG(speed)*1.852) as avg_kmh FROM birdstrikes`

Aggregation with dates

`SELECT MIN(reported_date),MAX(reported_date) from birdstrikes`

How many observation days we have in birdstrikes

`SELECT DATEDIFF(MAX(reported_date),MIN(reported_date)) from birdstrikes`


### Exercise 2: List the lowest speed and aircraft where the implicated aircraft was 'C' and rename to 'lowest_speed'


## GROUP BY

What is the lowest for the rest of the aircraft?

`SELECT MIN(speed), aircraft from birdstrikes group by aircraft`

`SELECT AVG(cost), COUNT(*), phase_of_flight aircraft from birdstrikes group by phase_of_flight`

### Exercise 3: Which phase_of_flight has the least of incidents? 
### Exercice 4: What is the highest average cost by phase_of_flight?

Multiple aggregate functions

`SELECT state, aircraft, COUNT(*), MAX(cost), MIN(cost), AVG(cost) FROM birdstrikes WHERE state LIKE 'A%' GROUP BY state, aircraft ORDER BY state, aircraft`

`SELECT aircraft, state, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state ORDER BY state`

Let's fix it:

`SELECT state, aircraft, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state, aircraft ORDER BY state, aircraft`

## HAVING

### Exercice 5: >>SELECT AVG(speed),state FROM birdstrikes GROUP BY state<< what is the result of this query

What if I want AVG speed for states which has 'island' on their name:

`SELECT AVG(speed),state FROM birdstrikes GROUP BY state WHERE state LIKE '%island%'`

Crashbummbang! The correct keyword after GROUP BY is HAVING

`SELECT AVG(speed),state FROM birdstrikes GROUP BY state HAVING state LIKE '%island%'`


### Exercice 6: What the highest AVG speed of the states with names less than 5 characters?



# Data write

## COPY TABLE
`CREATE TABLE new_birdstrikes LIKE birdstrikes`

`SHOW TABLES`

`DESCRIBE new_birdstrikes`

## DELETE TABLE 

`DROP TABLE new_birdstrikes`


## CREATE TABLE

`CREATE TABLE employee (id INTEGER NOT NULL, employee_name VARCHAR(255) NOT NULL, PRIMARY KEY(id))`

`DESCRIBE employee`

## INSERT LINE

Insert lines in employee table one by one

`INSERT INTO employee (id,employee_name) VALUES(1,'Student1')`

`INSERT INTO employee (id,employee_name) VALUES(2,'Student2')`

`INSERT INTO employee (id,employee_name) VALUES(3,'Student3')`

Let's check the results

`SELECT * FROM employee`

What happens if you try this (and why)?

`INSERT INTO employee (id,employee_name) VALUES(3,'Student4')`

## UPDATE LINE

Updating some records

`UPDATE employee SET employee_name='Arnold Schwarzenegger' WHERE id = '1'`

`UPDATE employee SET employee_name='The Other Arnold' WHERE id = '2'`

Let's check the results

`SELECT * FROM employee`

## DELETE LINE

Deleting some records

`DELETE FROM employee WHERE id = 3`

`DELETE FROM employee WHERE employee_name LIKE '%Arnold%'`

`DROP TABLE employee`



