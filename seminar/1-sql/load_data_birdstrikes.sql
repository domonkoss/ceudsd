DELETE FROM birdstrikes;

LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;
