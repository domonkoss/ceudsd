# (A bit more) advanced SQL

## 1. UNION (and UNION ALL)

The union operator puts the result of 2 select operations together.

```SQL
SELECT 'Anna' as Name
UNION
SELECT 'Peter' as Name
```

However the datasets that have to be joined, but have the same number of columns, and the same type of data in those column. For instance this will not work properly:

```SQL
SELECT 'Anna' as Name, 25 as Age
UNION
SELECT 'Peter' as Name
```

Now a real world example from the world bank database:

```SQL
SELECT country_name AS name FROM countries
UNION
SELECT city_name AS name FROM cities
```

```SQL
SELECT country_code AS name, NULL as country FROM countries
UNION
SELECT city_name AS name, country_code as country FROM cities
```

### Question: What is the difference between UNION and UNION ALL

Let's try it:

```SQL
SELECT 'ABW' as name, NULL as country
UNION ALL
SELECT country_code AS name, NULL as country FROM countries
```

## 2. Subqueries

So let's take the next example:

```SQL
CREATE TABLE countries_dup (country_name VARCHAR(255))
```

```SQL
INSERT INTO countries_dup
SELECT country_name FROM countries limit 100
```

The `INSERT INTO [...] SELECT` statement are actually 2 SQL statements, that execute in a way that the output of one query is used by the other query.

**Note:** *This is NOT considered as a subquery, this is actually a valid form of the INSERT syntax*

Here is a basic syntax for the subqueries:

```SQL
SELECT * FROM table1 WHERE column1 = (SELECT column1 FROM table2);
```

Terminology:

- subquery = inner query = nested query
- outer query

**Note:** A subquery must always appear within parentheses.

**Note2:** It is possible to nest subqueries within other subqueries.

### Using 'IN'

**Problem statement:** List all cities from countries whose name start with 'A' (eg. Afghanistan, Albania, etc)

```SQL
select * from countries  where country_name LIKE 'A%' order by country_name
```

```SQL
select city_name from cities where country_code IN ('AFG', 'ALB', ...)
```

A more elegant way is to use a subquery like this:

```SQL
select city_name from cities where country_code IN
(SELECT country_code from countries where country_name LIKE 'A%')
```

### Using 'EXISTS', 'NOT EXISTS'

**Problem statement:** Show all cities, that do not have a matching country in the countries table.

```SQL
select city_name from cities where NOT EXISTS
(SELECT * from countries where countries.country_code = cities.country_code)
```

The inverse:

```SQL
select city_name from cities where EXISTS
(SELECT * from countries where countries.country_code = cities.country_code)
```

Seems like the 'IN' operator, however they work differently as 'EXISTS' is checking for existence, while 'IN' is actually searching among values. 'EXISTS' is faster on large datasets, 'IN' is faster on smaller datasets.

### Using 'FROM'

**Problem statement:** What is the average number of countries in the regions that start with 'S'?

```SQL
SELECT AVG(country_count) FROM
(SELECT count(country_name) AS country_count, region FROM countries GROUP BY region HAVING region LIKE 'S%') T
```

## 3. SQL Functions

SQL is really good with functions, you'll use many of these when working with data.

### How to concatenate strings

```SQL
SELECT CONCAT('My', 'S', 'QL');
```

```SQL
SELECT CONCAT(country_code, '-', country_name) from countries;
```

### Other string manipulation functions

```SQL
SELECT INSERT('CEU2018', 4, 0, 'DSD');
```

```SQL
SELECT LEFT('CEUDSD', 3);
SELECT RIGHT('CEUDSD', 3);
```

```SQL
SELECT LOWER('CEUDSD');
SELECT CONCAT(UPPER(LOWER('CEUDSD')), '-', '2018');
```

### Date manipulation functions

```SQL
SELECT CURDATE();
```

```SQL
SELECT DATE_ADD('2008-12-02', INTERVAL 31 DAY);
```

```SQL
SELECT CONVERT_TZ('2004-01-01 12:00:00','CET','EST');
```

```SQL
SELECT CONVERT_TZ(CURRENT_TIME(), 'CET', 'EST');
```

## Appendix

Full list of supported MySQL functions:
<https://dev.mysql.com/doc/refman/8.0/en/functions.html>
