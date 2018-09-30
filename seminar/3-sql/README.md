# Creating and importing a new tables

We will add a new set of tables form a World Bank database. Normally this should be batch run of an .sql file. 

In our case this is the worldbank.sql added in this folder.

For each table we will do the following steps:

1. Run `CREATE TABLE table_name` command
2. `DESCRIBE table_name` (to check the table was indeed created)
3. `LOAD DATA INFILE ...` (to load the preloaded csv data into the table)
4. `SELECT * FROM table_name`

We will do this steps for 6 tables: cities, countries,languages,economies,currencies,populations

Before we start, lets make sure the loading wont fail if in the csv we have empty values

`SET sql_mode = '';`

Now lets do the first table called `cities`

```
CREATE TABLE cities (
  city_name               VARCHAR(255),
  country_code            VARCHAR(255),
  city_proper_pop         REAL,
  metroarea_pop           REAL NULL,
  urbanarea_pop           REAL,
  PRIMARY KEY(city_name)
);
```
Check if the table was created

`DESCRIBE cities`

Load cities.csv preloaded on the HDD into cities table. The csv fields are delimited with ',' the entries with '\n' and the first line is header

`LOAD DATA INFILE '/var/lib/mysql-files/cities.csv' INTO TABLE cities FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES`

Check if the data was loaded

`SELECT * FROM cities`

Repeat this for the remaining 5 tables. 


# Conditional logic

## CASE

Form

```
CASE expression
    WHEN test THEN result
    …
    ELSE otherResult
END
```

Lets create a new field base on surface and name it geosize_group

```
SELECT country_name, continent, country_code, surface_area,
    CASE 
        WHEN surface_area  > 2000000
            THEN 'large'
        WHEN  surface_area > 350000 AND surface_area <2000000
            THEN 'medium'
        ELSE 
            'small'
    END
    AS geosize_group   
FROM  countries
```

## Exercise 1

Using the populations table focused only for the year 2015, create a new field AS popsize_group to organize population size into

* 'large' (> 50 million),

* 'medium' (> 1 million), and

* 'small' groups.

Select only the country code, population size, and this new popsize_group as fields.
