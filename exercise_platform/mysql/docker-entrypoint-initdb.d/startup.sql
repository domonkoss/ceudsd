CREATE USER 'zeppelin'@'%' IDENTIFIED BY 'zeppelin';

CREATE DATABASE admin; 
USE admin;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Amodei_Ellen; 
USE Amodei_Ellen;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Baldwin_Alexander;
USE Baldwin_Alexander;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Bangari_Adarsh_Gurappa;
USE Bangari_Adarsh_Gurappa;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Berki_Tamas;
USE Berki_Tamas;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Boda_Imre;
USE Boda_Imre;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Bokonyi_Gabor;
USE Bokonyi_Gabor;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Burghard_Tamas;
USE Burghard_Tamas;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Chytil_Mario;
USE Chytil_Mario;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Dalnoki_Gabor;
USE Dalnoki_Gabor;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Demeter_Melinda;
USE Demeter_Melinda;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Domokos_Barna;
USE Domokos_Barna;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Duronelly_Peter;
USE Duronelly_Peter;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Elhence_Geeta;
USE Elhence_Geeta;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Gesheva_Nadezhda;
USE Gesheva_Nadezhda;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Gomes_Nuno;
USE Gomes_Nuno;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Haider_Ali;
USE Haider_Ali;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Illes_Gabor;
USE Illes_Gabor;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Kelemen_Andras;
USE Kelemen_Andras;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Kinizsi_Gergely;
USE Kinizsi_Gergely;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Koncz_Tamas;
USE Koncz_Tamas;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Kozula_Adam;
USE Kozula_Adam;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Kratzer_William;
USE Kratzer_William;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE McGrew_Jacob;
USE McGrew_Jacob;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Mirhossein_Seyed_Reza;
USE Mirhossein_Seyed_Reza;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Nand_Gaurav;
USE Nand_Gaurav;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Niranjan_Nikitha;
USE Niranjan_Nikitha;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Papp_Roland;
USE Papp_Roland;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Pasztor_Aurel;
USE Pasztor_Aurel;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Paziczki_Peter;
USE Paziczki_Peter;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Radics_Gabor_Balint;
USE Radics_Gabor_Balint;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Szamohval_Monika_Mira;
USE Szamohval_Monika_Mira;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Szilagyi_Laszlo_Janos;
USE Szilagyi_Laszlo_Janos;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Tagai_Lilla;
USE Tagai_Lilla;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Tumaliuan_Faye_Beatriz;
USE Tumaliuan_Faye_Beatriz;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Verkmann_Gabor;
USE Verkmann_Gabor;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Weidlich_David_Laszlo;
USE Weidlich_David_Laszlo;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Yetkin_Cagdas;
USE Yetkin_Cagdas;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

CREATE DATABASE Zankay_Balazs_Peter;
USE Zankay_Balazs_Peter;
CREATE TABLE birdstrikes (id INTEGER NOT NULL,aircraft VARCHAR(32),flight_date DATE NOT NULL,damage VARCHAR(16) NOT NULL,airline VARCHAR(255) NOT NULL,state VARCHAR(255),phase_of_flight VARCHAR(32),reported_date DATE,bird_size VARCHAR(16),cost INTEGER NOT NULL,speed INTEGER,PRIMARY KEY(id));
DELETE FROM birdstrikes;
LOAD DATA INFILE '/var/lib/mysql-files/birdstrikes.csv' INTO TABLE birdstrikes FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES
(id, aircraft, flight_date, damage, airline, state, phase_of_flight, @v_reported_date, bird_size, cost, @v_speed)
set
reported_date = nullif(@v_reported_date, ''),
speed = nullif(@v_speed, '')
;

GRANT FILE ON *.* TO 'zeppelin'@'%';
GRANT ALL PRIVILEGES ON admin.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Amodei_Ellen.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Baldwin_Alexander.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Bangari_Adarsh_Gurappa.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Berki_Tamas.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Boda_Imre.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Bokonyi_Gabor.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Burghard_Tamas.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Chytil_Mario.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Dalnoki_Gabor.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Demeter_Melinda.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Domokos_Barna.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Duronelly_Peter.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Elhence_Geeta.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Gesheva_Nadezhda.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Gomes_Nuno.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Haider_Ali.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Illes_Gabor.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Kelemen_Andras.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Kinizsi_Gergely.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Koncz_Tamas.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Kozula_Adam.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Kratzer_William.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON McGrew_Jacob.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Mirhossein_Seyed_Reza.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Nand_Gaurav.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Niranjan_Nikitha.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Papp_Roland.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Pasztor_Aurel.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Paziczki_Peter.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Radics_Gabor_Balint.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Szamohval_Monika_Mira.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Szilagyi_Laszlo_Janos.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Tagai_Lilla.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Tumaliuan_Faye_Beatriz.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Verkmann_Gabor.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Weidlich_David_Laszlo.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Yetkin_Cagdas.* TO 'zeppelin'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Zankay_Balazs_Peter.* TO 'zeppelin'@'%' WITH GRANT OPTION;
