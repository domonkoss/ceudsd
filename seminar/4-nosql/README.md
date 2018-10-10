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

Let’s try a where clause:
```
SELECT *  FROM h2o_feet WHERE location = 'santa_monica' LIMIT 10
```
### ***Exercise 1***
HOW MANY “DEGREE” MEASUREMENT POINTS WE HAVE IN H2O_TEMPERATURE?

### ***Exercise 2***
LIST THE DISTINCT LEVEL DESCRIPTORS FOR H2O_FEET?


MEAN as aggregation function:

```
SELECT MEAN(water_level) FROM h2o_feet GROUP BY location 
```

### ***Exercise 3***
BETWEEN 2015-08-19 AND 2015-08-27 HOW MANY DAILY H2O_FEET MEASUREMENTS WERE DONE IN 'coyote_creek'


#### Advanced Data Exploration

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



<a name="solr"/>

## SOLR

#### Links to help you
https://cwiki.apache.org/confluence/display/solr/The+Standard+Query+Parser

http://yonik.com/solr/query-syntax/



#### Simple queries

SOLR has different connectors to programming languages. For simple query testing, we don’t need to program because SOLR is offering so called HTTP Rest interface. These are basically url calls from a browser.

The simplest query (the result is limited by default to 10):
```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:* 
```

[In SQL would be something like this:
`SELECT * FROM nycflights`]

Same query, but now limited to 3 results:
```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:*&rows=3
```

[In SQL would be something like this:
`SELECT * FROM nycflights LIMT 3`]

Same query, but the output is CSV:
```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:*&rows=3&wt=csv
```

Same as the first query, but requesting only one field of the document (year):

```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:*&fl=year
```
[In SQL would be something like this:
`SELECT year FROM nycflights`]

Same as the first query, but requesting only the fields starting with “d”:
```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:*&fl=d*
```

Same as the first query, but requesting two fields of the document (year,origin):
```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:*&fl=year,origin
```
[In SQL would be something like this:
`SELECT year,origin FROM nycflights`]


Sort by distance in descending order:
```
http://ceudsd.net:8081/solr/dsdcore/select?q=*:*&rows=5&sort=distance desc
```


#### Ranges 
Return the documents where hour is between 0 and 6, show only hour field.
```
http://ceudsd.net:8081/solr/dsdcore/select?fl=hour&q=hour:[0 TO 6]
```

Return the documents from this last 5 years, show only time_hour field.

```
http://ceudsd.net:8081/solr/dsdcore/select?fl=time_hour&q=time_hour:[NOW-5YEARS TO *]
```

#### Fuzzy
Show me the tailnums for tail numbers starting with any character, followed by “2”, followed by 2 any character, followed by "jb"
```
http://ceudsd.net:8081/solr/dsdcore/select?fl=tailnum&q=tailnum:?2??jb
```

Show me destinations where the destination contains “ac” anywhere: 
```
http://ceudsd.net:8081/solr/dsdcore/select?fl=dest&q=dest:ac~1
```

#### Facets
Give me a document list when no filter and return the facets for "dest" and “hour”:
```
http://ceudsd.net:8081/solr/dsdcore/select?facet.field=dest&facet.field=hour&facet=on&q=*:*
```

Give me a document list when no filter and return the facets for "dest" and “hour”:
```
http://ceudsd.net:8081/solr/dsdcore/select?facet.field=dest&facet.field=hour&facet=on&q=origin:JFK
```

### ***Exercise 4***
HOW MANY FLIGHTS HAVE NO ARRIVAL DELAY?

<a name="neo4j"/>

## NEO4J

#### Links to help you

https://neo4j.com/developer/cypher-query-language/

http://neo4j.com/docs/developer-manual/current/cypher/

https://cloudfront-files-1.publicintegrity.org/offshoreleaks/neo4j/guide/index.html

 

#### Simple queries

In Neo4J the SELECT is called MATCH. One of the simplest query is selecting 25 Officer nodes :

```
MATCH (n:Officer) 
RETURN n LIMIT 25
```

[In SQL would be something like this:
`SELECT * FROM Officer AS n LIMIT 5`]

Same SELECT but instead of node the node name is returned:
```
MATCH (n:Entity) 
RETURN n.name LIMIT 25
```
[In SQL would be something like this:
`SELECT name FROM Entity AS n LIMIT 25`]


We can use WHERE clause to filter our result:
```
MATCH (o:Officer)
WHERE o.countries CONTAINS 'Hungary'
RETURN o
```

[In SQL would be something like this:
`SELECT o.countries FROM Officer AS o WHERE o.countries LIKE '%Hungary%'`]



### ***Exercise 5***
RETURN THE FIRST 25 ADDRESS NODES

### ***Exercise 6***
HOW MANY PROPERTIES AN ADDRESS NODE HAS? 

### ***Exercise 7***
RETURN THE FIRST 30 COUNTRIES OF THE ADDRESS NODE

### ***Exercise 8***
HOW MANY ADDRESS NODES HAS 'Mexico' OR 'Monaco' IN THEIR ADDRESS PROPERTY?

####  JOINS

Find joint/linked entities with double MATCH, find the officers from Hungary and the Entities linked to them:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[r]-(c:Entity)
RETURN o,r,c
```

[In SQL would be something like this:
`SELECT * 
FROM Officer as o  
INNER JOIN Entity as c 
USING (relationship)
`
]

A variation of the previous one, but here the link type is specified:
```
MATCH (o:Officer) 
WHERE o.countries CONTAINS 'Hungary'
MATCH (o)-[:DIRECTOR_OF]-(c:Entity)
RETURN o,c
```

Find the Officers called "aliyev" and Entities related to them:
```
MATCH (o:Officer) 
WHERE toLower(o.name) CONTAINS "aliyev"
MATCH (o)-[r]-(c:Entity)
RETURN o,r,c
```

### ***Exercise 9***
TRANSLATE THIS CYPHER QUERY TO SQL AS CLOSE AS YOU CAN.
```
MATCH (n:Officer) WHERE exists(n.countries)
RETURN n.country_codes, count(*)
ORDER BY count(*) DESC
LIMIT 10
```
What the previous query is returning?

#### Node analytics

Return all node labels
```
MATCH (n)
RETURN DISTINCT labels(n) 
```

Same as before, but using "WITH" 
```
MATCH (n)
WITH labels(n) AS type
RETURN DISTINCT type
```

Show the average degree by node type:
```
MATCH (n)
WITH labels(n) AS type, size( (n)--() ) AS degree
RETURN type, round(avg(degree)) AS avg
```

Calculate the degree and clustering_coefficient of a node:
```
MATCH (a:Officer {name: "Portcullis TrustNet (Samoa) Limited"})--(b)
WITH a, count(DISTINCT b) AS n
MATCH (a)--()-[r]-()--(a)
RETURN n as degree, count(DISTINCT r) AS clustering_coefficient
```

### ***Exercise 10***
List the name and degree of the top 10 most connected Officers from Romania.Tell me the no1.


<a name="homework"/>


# HOMEWORK! (Submit to moodle by 18nd of October 21:00)

Use the datasets configured for each DB and create queries to solve the following tasks:

* INFLUX: HOW MUCH IS THE AVERAGE H2O TEMPERATURE BY LOCATION ?

* SOLR: HOW MANY “B6” CARRIERS WE GOT IF FILTER IN ONLY THE DESTINATIONS STARTING WITH LETTER “B”?

* NEO4J: FIND THE ENTITIES RELATED TO OFFICERS NAMED “TUDOR” AND ALL NODES RELATED TO THESE ENTITIES.






