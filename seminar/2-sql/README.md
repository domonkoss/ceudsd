# Altering your data

Updating some records

`UPDATE birdstrikes SET aircraft='Unknown' WHERE aircraft = ''`

Deleting some records

`DELETE FROM birdstrikes WHERE aircraft = 'Unknown'`

## Groupping and aggregation

## COUNT

Counting the number of records

`SELECT COUNT(*) FROM birdstrikes`

Now let's find a column where we have nulls. How you do that?

`DESCRIBE birdstrikes`

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

SELECT MIN(speed), aircraft from birdstrikes group by aircraft





# A bit more advanced SQL

## Group by revisited

## Groupping and aggregation

`SELECT state, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state`

`SELECT aircraft, state, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state`

**Note: Check Slides**

## Create tables

`CREATE TABLE group (ID INTEGER NOT NULL, group_name VARCHAR(255) NOT NULL)`

`DESC group`

## Delete tables

`DROP TABLE group`

## Data types

`CREATE TABLE group (ID INTEGER NOT NULL, group_name VARCHAR(255) NOT NULL)`

`INSERT INTO group (ID,group_name) VALUES ('111','Admin')`

**Data types**

* Numeric
* Date and time
* String (or binary)

**Workshop**
- check in Google roughly how many sub-types are there in each category (in MySQL)
- Delete your User table
- Re-create the User table with an additional birthdate columns (ID, user_name, birth_date) (not-null any of the columns)
- Insert a record in the table specifying a date field (user_id = 100)
- Let us know, when ready - we will check 

## Primary Key (and indexes)

`CREATE TABLE User (ID INTEGER NOT NULL, USERNAME VARCHAR(255) NOT NULL)`

`CREATE TABLE User (ID INTEGER NOT NULL, USERNAME VARCHAR(255) NOT NULL, PRIMARY KEY(ID))`

## Join tables

```
A    B
-    -
1    3
2    4
3    5
4    6
```

* INNER JOIN

```
a | b
--+--
3 | 3
4 | 4
```

* LEFT OUTER JOIN
```
a |  b
--+-----
1 | null
2 | null
3 |    3
4 |    4
```

* RIGHT OUTER JOIN
* FULL OUTER JOIN

**Workshop**
- Google: how to modify a table to add a column
- Modify the Group table to add a user_id column (ID, group_name, user_id)
- Insert a record with group_id = 111, user_id = 100
- Create a Select query that shows all users from the Group with ID 111

## Relations

**Note: Check Slides**

## Load CSV into table

```
DELETE from birdstrikes
```

```
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' 
INTO TABLE birdstrikes 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '');
```

## Homework
* Create a table called `airline`
* * (`ID`, `airline_name`)
* * ID - should be an automatically incremented integer ID (google it how to do it)
* Populate this table with all airlines from birdstrikes
* * Hint: google "INSERT SELECT mysql"
* Add a column `airline_id` to birdstrikes
* Update birdstrikes.airline_id to use the IDs from this new airlines table
* * Hint: google "UPDATE JOIN"
* Delete the birdstrikes.airline column
* Write a `JOIN` statement to join the 2 tables and see the result in the same way as was originally in the `birdstrikes` table
* explain why it is good that we have a different airline table
