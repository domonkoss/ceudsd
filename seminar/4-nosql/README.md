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
SELECT COUNT(water_level) FROM h2o_feet WHERE time >= '2015-08-19T00:00:00Z' AND time <= '2015-08-27T17:00:00Z' AND location='coyote_creek' GROUP BY time(3d)
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


Let's set up our own user folder. Let's copy the birdstrikes file to our own directory:
```
pwd
cd
cp /home/backup/birdstrikes.csv ./
ls
ls -l
```

## Basic commands

`cat` -
Print the file to the screen.
```
cat birdstrikes.csv
```

`less` -
Explore the csv
```
less birdstrikes.csv
```

`head` -
Print the first 20 lines to the file to the screen
```
head -n 20 birdstrikes.csv
```

`man` -
What is `-n`? Check it in the manual
```
man head
```

`tail` -
Check the last 10 lines of the file
```
tail -n 10 birdstrikes.csv
```

`>` - Put the first 10 lines into an other file
```
head -n 10 birdstrikes.csv > first10.csv
```

show the last line of the csv.
```
tail -1 first10.csv
```

* `|` -
we can do this with 1 command
```
head -n 5 birdstrikes.csv | tail -n 1
```

### ***Exercise***
put the 5th line into the 5thline.csv

## Filtering

`grep` -
Only show incidents from California
```
cat birdstrikes.csv | grep California 
```

`grep -v` -
Only show incidents NOT with Airplanes
```
cat birdstrikes.csv | grep -v Airplane
```

`grep -i` -
Ignore case
```
cat birdstrikes.csv | grep -i airplane
```

## Others

`wc` - show the line, word and character count of birdstrikes
```
wc birdstrikes.csv
```

```wc -l```
shows only the line count

### ***Exercise***

* show the word, line and character count of the first 10 lines
* how many incidents were in California (only output line count)

## Cutting lines

```
cat birdstrikes.csv | cut -d ';' -f5
```

* `cut` - Display only the *aircraft* and the *flight_date* columns
```
cat birdstrikes.csv | cut -d ';' -f2,3
```
### ***Exercise***

* Display only the *state* and the *bird size* columns of Airplane accidents

`sort` -
Sort this file
```
sort birdstrikes.csv
```

* `sort -k -t` -
Sort by feet above ground, high values first
```
cat birdstrikes.csv | sort -k11 -t ';' -n -r | less
```

### ***Exercise***
* Which was the most expensive incident?

`sort | uniq` -
What kind of bird sizes are there?
```
cat birdstrikes.csv | cut -d ';' -f9 | sort | uniq
```

### ***Exercise***
In how many states did accidents happen?
```
cat birdstrikes.csv | cut -d ';' -f6 | sort | uniq | wc -l
```

* `uniq -c` -
How many incidents were there by state?
```
cat birdstrikes.csv | cut -d ';' -f6 | sort | uniq -c
```

## Scripts

* `bash script` - Write a script that gets the first column

```
# nano firstcolumn.sh

cut -d ';' -f1

# chmod a+x firstcolumn.sh
# cat birdstrikes | ./firstcolumn.sh
```

* `bash` -
script parameters
```
echo $1
cat
```

## Homework

* Print the number of lines in bridstrikes
* Show the first 3 Helicopter incidents outside of Colorado
* How many incidents did happen were cost is bigger than 0
* In which Area did the most expensive incident happen that was caused by a Small bird?
* Optional - Check (in google) and explain what regular expressions are, and how they could be used with grep. Provide an example on how you would use it with birdstrikes

