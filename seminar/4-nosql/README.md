# NoSQL Exercises

## Influx

Let’s explore the databases in this Influx DBMS:
```
SHOW DATABASES
```

Notice “NOAA_water_database” database in the list.  Similar list you get, if you use the top banner database selector. Please select “NOAA_water_database” in this banner.

Now, let’s see the tables in this DB. In Influx tables are called “measurements”.

```
SHOW MEASUREMENTS
```

The columns here are called fields and tags. From your perspective there is no difference between them (in reality tags can be accessed faster). These 2 commands are listing the column names:

```
SHOW FIELD KEYS FROM h2o_feet
SHOW TAG KEYS FROM h2o_feet
```

Let’s see this in tabular format with values:
```
SELECT * FROM h2o_feet
```

LIMIT function:
```
SELECT * FROM h2o_feet LIMIT 5
```

ORDER BY:
```
SELECT * FROM h2o_feet ORDER BY time DESC
```

SELECT specified columns:
```
SELECT location,water_level FROM h2o_feet
```

Check distinct values of the columns
```
SELECT DISTINCT(*)  FROM h2o_feet
```

Notice the location column is not there, because distinct can be done only on fields. “location” is tag. Distinct tag value can be listed for example by grouping. Here we used MEAN as aggregation function:

```
SELECT MEAN(water_level) FROM h2o_feet GROUP BY location
```

Let’s try a where clause:
```
SELECT *  FROM h2o_feet WHERE location = 'santa_monica'
```

Now a more advanced SELECT using time:

```
SELECT COUNT(water_level) 
  FROM h2o_feet WHERE time >= '2015-08-19T00:00:00Z' 
  AND time <= '2015-08-27T17:00:00Z' 
  AND location='coyote_creek' 
  GROUP BY time(3d)
```

Arithmetic SELECT:
```
SELECT (water_level * 2) + 4 from h2o_feet
```

Some statistical functions:
```
SELECT SPREAD(water_level) FROM h2o_feet

SELECT STDDEV(water_level) FROM h2o_feet

SELECT PERCENTILE(water_level,5) FROM h2o_feet WHERE location = 'coyote_creek’
```

### ***Exercise***
HOW MANY “DEGREE” MEASUREMENT POINTS WE HAVE IN H2O_TEMPERATURE?



## NEO4J

In Neo4J the SELECT is called MATCH. One the simplest query is selecting 25 Officer nodes. 

```
MATCH (n:Officer) 
RETURN n LIMIT 25
```

Same select but instead of node the node name is returned:
```
MATCH (n:Entity) 
RETURN n.name LIMIT 25
```

We can use WHERE clause to filter our result:
```
MATCH (o:Officer)
WHERE o.countries CONTAINS 'Hungary'
RETURN o
```


Double MATCH, find the officers from Hungary and the Entities linked to them:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[r]-(c:Entity)
RETURN o,r,c
```

A variation of the previous one, but here is link type is specified:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[:DIRECTOR_OF]-(c:Entity)
RETURN o,c
```

Which country has to most nodes?
```
MATCH (n:Officer) WHERE exists(n.countries)
RETURN n.country_codes, count(*)
ORDER BY count(*) DESC
LIMIT 10
```

Find the Officers called "aliyev" and Entities related to them:
```
MATCH (o:Officer) 
WHERE toLower(o.name) CONTAINS "aliyev"
MATCH (o)-[r]-(c:Entity)
RETURN o,r,c
```

Show the average degree by node type:
```
MATCH (n)
WITH labels(n) AS type, size( (n)--() ) AS degree
RETURN type, round(avg(degree)) AS avg
```


Node analytics, calculate the degree and clustering_coefficient of a node:
```
MATCH (a:Officer {name: "Portcullis TrustNet (Samoa) Limited"})--(b)
WITH a, count(DISTINCT b) AS n
MATCH (a)--()-[r]-()--(a)
RETURN n as degree, count(DISTINCT r) AS clustering_coefficient
```

### ***Exercise***
List the name and degree of the top 10 connected Officers from Romania.


## HOMEWORK

Use the datasets configured for each DB and create queries to solve the following tasks:

INFLUX: HOW MUCH IS THE AVERAGE H2O TEMPERATURE BY LOCATION ?

INFLUX: HOW MANY SAMPLES WE HAVE WEEKLY FOR H2O_TEMPERATURES?


NEO4J: FIND THE ENTITIES RELATED TO OFFICERS NAMED “TUDOR” AND ALL NODES RELATED TO THIS ENTITIES.



