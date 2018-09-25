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


## HAVING

### Exercice 5: >>SELECT AVG(speed),state FROM birdstrikes GROUP BY state<< what is the result of this query

What if I want AVG speed for states which has 'island' on their name:

SELECT AVG(speed),state FROM birdstrikes GROUP BY state WHERE state LIKE '%island%'

Crashbummbang! The correct keyword after GROUP BY is HAVING

SELECT AVG(speed),state FROM birdstrikes GROUP BY state HAVING state LIKE '%island%'


### Exercice 6: What the highest AVG speed of the states with names less than 5 characters?





# Altering your data




## Create tables

`CREATE TABLE group (ID INTEGER NOT NULL, group_name VARCHAR(255) NOT NULL)`

`DESC group`

## Delete tables

`DROP TABLE group`




Updating some records

`UPDATE birdstrikes SET aircraft='Unknown' WHERE aircraft = ''`

Deleting some records

`DELETE FROM birdstrikes WHERE aircraft = 'Unknown'`


`CREATE TABLE User (ID INTEGER NOT NULL, USERNAME VARCHAR(255) NOT NULL)`

`CREATE TABLE User (ID INTEGER NOT NULL, USERNAME VARCHAR(255) NOT NULL, PRIMARY KEY(ID))`



