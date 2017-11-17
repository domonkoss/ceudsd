# Command Line Exercises

## Setup

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

