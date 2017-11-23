# NoSQL Exercises

[INFLUX](#influx)  
[SOLR](#solr)  
[NEO4J](#neo4j)  
[HOMEWORK](#homework)  


<a name="influx"/>

## INFLUX

#### Links to help you
https://docs.influxdata.com/influxdb/v1.0/query_language/data_exploration/

https://docs.influxdata.com/influxdb/v1.0/query_language/math_operators/

https://docs.influxdata.com/influxdb/v1.0/query_language/functions/



#### Schema exploration
Let’s explore the databases in this Influx DBMS:
```
SHOW DATABASES
```

Notice “NOAA_water_database” database in the list.  Similar list you get, if you use the top banner database selector. Please select “NOAA_water_database” in this banner.

Now, let’s see the tables in this DB. In Influx tables are called “measurements”.

```
SHOW MEASUREMENTS
```

The columns here are called fields and tags. From your perspective, there is not much difference between them (in reality tags can be accessed faster). These 2 commands are listing the column names for all measurements:

```
SHOW FIELD KEYS 
```

```
SHOW TAG KEYS 
```

#### Data Exploration

Simple SELECT:
```
SELECT * FROM h2o_feet
```

LIMIT function:
```
SELECT * FROM h2o_feet LIMIT 5
```

ORDER BY:
```
SELECT * FROM h2o_feet ORDER BY time DESC LIMIT 10
```

SELECT specified columns:
```
SELECT location,water_level FROM h2o_feet LIMIT 10
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
SELECT *  FROM h2o_feet WHERE location = 'santa_monica' LIMIT 10
```

#### Advanced Data Exploration

Now a more complicated SELECT using aggregation:

```
SELECT COUNT(water_level) 
  FROM h2o_feet WHERE time >= '2015-08-19T00:00:00Z' 
  AND time <= '2015-08-27T17:00:00Z' 
  AND location='coyote_creek' 
  GROUP BY time(3d)
```

Arithmetic SELECT:
```
SELECT (water_level * 2) + 4 from h2o_feet LIMIT 10
```

Some statistical functions:
```
SELECT SPREAD(water_level) FROM h2o_feet
```
```
SELECT STDDEV(water_level) FROM h2o_feet
```
```
SELECT PERCENTILE(water_level,5) FROM h2o_feet WHERE location = 'coyote_creek'
```

### ***Exercise***
HOW MANY “DEGREE” MEASUREMENT POINTS WE HAVE IN H2O_TEMPERATURE?

<a name="solr"/>

## SOLR

#### Links to help you
https://cwiki.apache.org/confluence/display/solr/The+Standard+Query+Parser

http://yonik.com/solr/query-syntax/



#### Simple queries

SOLR has different connectors to programming languages. For simple query testing, we don’t need to program because SOLR is offering so called HTTP Rest interface. These are basically url calls from a browser.

The simplest query (the result is limited by default to 10):
```
http://ceudsd.net/solr/dsdcore/select?q=*:*
```

Same query, but now limited to 3 results:
```
http://ceudsd.net/solr/dsdcore/select?q=*:*&rows=3
```

Same query, but the output is CSV:
```
http://ceudsd.net/solr/dsdcore/select?q=*:*&rows=3&wt=csv
```

The first query, but requesting only one field of the document (year):
```
http://ceudsd.net/solr/dsdcore/select?q=*:*&fl=year
```

The first query, but requesting only the fields starting with “d”:
```
http://ceudsd.net/solr/dsdcore/select?q=*:*&fl=d*
```

#### Facests
Besides the expected result on q=*.* (first query), return the facets for “hour”:
```
http://ceudsd.net/solr/dsdcore/select?facet.field=dest&facet.field=hour&facet=on&q=*:*
```

#### Ranges 
Same query as before, but filter in only the hours between 0 and 6 and switch off the listing:
```
http://ceudsd.net/solr/dsdcore/select?facet.field=hour&facet=on&q=hour:[0 TO 6]&rows=0
```

Show me the first 10 results from 4 years to current time. Also return the facets for time_hour:
```
http://ceudsd.net/solr/dsdcore/select?facet.field=time_hour&facet=on&q=time_hour:[NOW-4YEARS TO *]&rows=10
```

#### Fuzzy
Show me the tailnum facets for tail numbers starting with any character, followed by “2”, followed by 2 any character, followed by :jb”:
```
http://ceudsd.net/solr/dsdcore/select?facet.field=tailnum&facet=on&q=tailnum:?2??jb&rows=0
```

Show me destinations where the destination contains “ac” anywhere: 
```
http://ceudsd.net/solr/dsdcore/select?fl=dest&q=dest:ac~1
```

### ***Exercise***
HOW MANY FLIGHTS HAVE NO ARRIVAL DELAY?

<a name="neo4j"/>

## NEO4J

#### Links to help you

https://neo4j.com/developer/cypher-query-language/

http://neo4j.com/docs/developer-manual/current/cypher/

https://cloudfront-files-1.publicintegrity.org/offshoreleaks/neo4j/guide/index.html



 

#### Simple queries

In Neo4J the SELECT is called MATCH. One of the simplest query is selecting 25 Officer nodes:
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

A variation of the previous one, but here the link type is specified:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[:DIRECTOR_OF]-(c:Entity)
RETURN o,c
```

#### Advenced queries

Which country has the most nodes?
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

#### Node analytics

Calculate the degree and clustering_coefficient of a node:
```
MATCH (a:Officer {name: "Portcullis TrustNet (Samoa) Limited"})--(b)
WITH a, count(DISTINCT b) AS n
MATCH (a)--()-[r]-()--(a)
RETURN n as degree, count(DISTINCT r) AS clustering_coefficient
```

### ***Exercise***
List the name and degree of the top 10 most connected Officers from Romania.Tell me the no1.


<a name="homework"/>

## HOMEWORK

Use the datasets configured for each DB and create queries to solve the following tasks:

INFLUX: HOW MUCH IS THE AVERAGE H2O TEMPERATURE BY LOCATION ?

INFLUX: HOW MANY SAMPLES WE HAVE WEEKLY FOR H2O_TEMPERATURES?

SOLR: HOW MANY “B6” CARRIERS WE GOT IF FILTER IN ONLY THE DESTINATIONS STARTING WITH LETTER “B”?

NEO4J: FIND THE ENTITIES RELATED TO OFFICERS NAMED “TUDOR” AND ALL NODES RELATED TO THIS ENTITIES.






