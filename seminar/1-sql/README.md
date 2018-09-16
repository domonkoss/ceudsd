# Basic SQL statements


List the table(s) of your database

`SHOW TABLES`

List the structure of a table

`DESCRIBE birdstrikes`

## Selecting data

Select all data

`SELECT * FROM birdstrikes`

`select * from birdstrikes`

Select certain field

`SELECT cost FROM birdstrikes`

Select certain fields

`SELECT bird_size, cost FROM birdstrikes`

Select all & limit

`SELECT * FROM birdstrikes LIMIT 10`

### Exercise1: What airline and state figures in the 145th line of our database?

## Ordering data

Order by a field

`SELECT state, cost FROM birdstrikes ORDER BY cost`

Order by a multiple fields

`SELECT state, cost FROM birdstrikes ORDER BY state, cost ASC`

Reverse ordering

`SELECT state, cost FROM birdstrikes ORDER BY cost DESC`

Reverse ordering by multple fields

`SELECT state, cost FROM birdstrikes ORDER BY state DESC, cost`

### Exercise2: What is the date the newest birstrikes in this database?

## Select uniques values of a column

`SELECT DISTINCT damage FROM birdstrikes`

### Selecting unique pairs

`SELECT DISTINCT airline, damage FROM birdstrikes`

### Exercise3: What was the cost of the 100th most expensive damage?


## Filtering data

Filter by field value

`=` equal

`<>` not equal (standard SQL)

`!=` equal

`<` less than

`>` greater than

`<=` less than or equal to

`>=` greater than or equal to

#### VARCHAR
`SELECT * FROM birdstrikes WHERE state = 'Alabama'`

`SELECT * FROM birdstrikes WHERE state != 'Alabama'`

#### INT

SELECT * FROM birdstrikes WHERE speed = 350

SELECT * FROM birdstrikes WHERE speed >= 25000

#### DATE

SELECT * FROM birdstrikes WHERE flight_date = "2000-01-02"

SELECT * FROM birdstrikes WHERE flight_date < "2000-01-02"






Filter by multiple conditions

`SELECT * FROM birdstrikes WHERE state = 'Alabama' AND bird_size = 'Small'`

`SELECT * FROM birdstrikes WHERE state = 'Alabama' OR state = 'Missouri'`

`SELECT * FROM birdstrikes WHERE state IN ('Alabama', 'Missouri')`




#TODO filter numbers
#TODO filter dates
#TODO ranges BETWEEN, IN
#TODO explain more detailed AND AND OR
#TODO more advanced logical combinations with paranthesis



String operations:

`SELECT state FROM birdstrikes WHERE state LIKE 'A%' OR state LIKE '%a'`

### Note: Case insensitivity.

`SELECT state FROM birdstrikes WHERE state LIKE 'A%'`

#TODO NOT LIKE

#TODO IS NULL, IS NOT NULL

### Exercise: How do you filter out all records which have no state or no bird_size specified?

## Workshop
* What's the maximum overall cost
  * In which state did this accident happen?
* Display the first three states in alphabetical order
* What is the size of the bird that caused the biggest damage in Missouri?

## A couple of more SQL statements

Updating some records

`UPDATE birdstrikes SET aircraft='Unknown' WHERE aircraft = ''`

Deleting some records

`DELETE FROM birdstrikes WHERE aircraft = 'Unknown'`

## Groupping and aggregation

Countint the number of records

`SELECT COUNT(*) FROM birdstrikes`

#TODO SELECT DISTINCT COUNT

Simple aggregations

#TODO SUM


`SELECT MAX(cost) FROM birdstrikes`

`SELECT state, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state ORDER BY state`

Multiple aggregate functions:

`SELECT state, aircraft, COUNT(*), MAX(cost), MIN(cost), AVG(cost) FROM birdstrikes WHERE state LIKE 'A%' GROUP BY state, aircraft ORDER BY state, aircraft`

**Sometimes it doesn't work**:

`SELECT aircraft, state, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state ORDER BY state`

Let's fix it:
`SELECT state, aircraft, MAX(cost) AS max_cost FROM birdstrikes GROUP BY state, aircraft ORDER BY state, aircraft`

You can filter here, too:
`SELECT state, aircraft, MAX(cost) AS max_cost FROM birdstrikes WHERE state LIKE 'A%' GROUP BY state, aircraft ORDER BY state, aircraft`

#TODO arithmetic SELECT 45 / 10 * 100.0;
#Aliasing


Advanced groupping - HAVING

In SQL, aggregate functions can't be used in WHERE clauses. For example, the following query is invalid:

`SELECT state, COUNT(*) FROM birdstrikes GROUP BY state WHERE COUNT(*) > 100`

but we can use HAVING:

`SELECT state, COUNT(*) FROM birdstrikes GROUP BY state HAVING COUNT(*) > 100`

`SELECT state, COUNT(*) FROM birdstrikes
WHERE state != ''
GROUP BY state HAVING COUNT(*) > 100`

## Homework

You need to use Google to find out how to solve this problem.

1. You have to create 1 table in your own database. The table's name should be `User`, and should have 2 columns: ID Integer NOT NULL, USERNAME VARCHAR(255) NOT NULL (Hint:, there is a create_birdstrikes.sql in this git repository)
2. After the table is create you will have to insert in your table 1 sinlge user. 
3. Send these SQL statements to me either on Slack (Szilveszter Molnar) or in e-mail (MolnarSzi@ceu.edu)
