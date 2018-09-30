
CREATE TABLE cities (
  city_name               VARCHAR(255),
  country_code            VARCHAR(4),
  city_proper_pop         REAL,
  metroarea_pop           REAL,
  urbanarea_pop           REAL NOT NULL,
  PRIMARY KEY(city_name)
);

LOAD DATA INFILE '/var/lib/mysql-files/cities.csv' INTO TABLE cities FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES


CREATE TABLE countries (
  country_code          VARCHAR(4),
  country_name          VARCHAR(255),
  continent             VARCHAR(255),
  region                VARCHAR(255),
  surface_area          REAL,
  indep_year            INTEGER,
  local_name            VARCHAR(255),
  gov_form              VARCHAR(255),
  capital               VARCHAR(255),
  cap_long              REAL,
  cap_lat               REAL,
  PRIMARY KEY(country_code)
);

LOAD DATA INFILE '/var/lib/mysql-files/countries.csv' INTO TABLE countries FIELDS TERMINATED BY ',' ENCLOSED BY '"'  LINES TERMINATED BY '\n' IGNORE 1 LINES

CREATE TABLE languages (
  lang_id               INTEGER,
  country_code          VARCHAR(4),
  name                  VARCHAR(255),
  percent               REAL,
  official              BOOLEAN,
  PRIMARY KEY(lang_id)
);

LOAD DATA INFILE '/var/lib/mysql-files/languages.csv' INTO TABLE languages FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES


CREATE TABLE economies (
  econ_id               INTEGER,
  country_code          VARCHAR(4),
  year                  INTEGER,
  income_group          VARCHAR(255),
  gdp_percapita         REAL,
  gross_savings         REAL,
  inflation_rate        REAL,
  total_investment      REAL,
  unemployment_rate     REAL,
  exports               REAL,
  imports               REAL,
  PRIMARY KEY(econ_id)
);

LOAD DATA INFILE '/var/lib/mysql-files/economies.csv' INTO TABLE economies FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES


CREATE TABLE currencies (
  curr_id               INTEGER,
  country_code          VARCHAR(4),
  basic_unit            VARCHAR(255),
  curr_code             VARCHAR(255),
  frac_unit             VARCHAR(255),
  frac_perbasic         REAL,
  PRIMARY KEY(curr_id)
);

LOAD DATA INFILE '/var/lib/mysql-files/currencies.csv' INTO TABLE currencies FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES



CREATE TABLE populations (
  pop_id                INTEGER,
  country_code          VARCHAR(4),
  year                  INTEGER,
  fertility_rate        REAL,
  life_expectancy       REAL,
  size                  REAL,
  PRIMARY KEY(pop_id )
);

LOAD DATA INFILE '/var/lib/mysql-files/populations.csv' INTO TABLE populations FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES


