-- Databricks notebook source
CREATE DATABASE  IF NOT EXISTS f1_raw

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Circuits table

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.circuits;
CREATE TABLE IF NOT EXISTS f1_raw.circuits(circuitId INT,
                                           circuitRef String,
                                           name String,
                                           location String,
                                           country String,
                                           lat Double,
                                           lng String,
                                           alt Integer,
                                           URL STRING)
USING csv
OPTIONS(path "/mnt/formula1dlyus/raw/circuits.csv", header True)


-- COMMAND ----------

SELECT * FROM f1_raw.circuits

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Create races table
-- MAGIC

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.races;
CREATE TABLE IF NOT EXISTS f1_raw.races(
                                      raceId Integer,
                                      year Integer,
                                      round Integer,
                                      circuitId Integer,
                                      name String,
                                      date Date,
                                      time String,
                                      url String)
USING csv
OPTIONS(path "/mnt/formula1dlyus/raw/races.csv", header True)

-- COMMAND ----------

select *
from f1_raw.races

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## JSON files

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Constructors file

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.constructors;

CREATE TABLE IF NOT EXISTS f1_raw.constructors(
  constructorId INT,
   constructorRef STRING, 
   name STRING ,
   nationality STRING,
  url STRING
)
USING json
OPTIONS(path "/mnt/formula1dlyus/raw/constructors.json", header True)

-- COMMAND ----------

SELECT *
FROM f1_raw.constructors

-- COMMAND ----------

-- MAGIC %md 
-- MAGIC ### drivers file

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.drivers;

CREATE TABLE IF NOT EXISTS f1_raw.drivers(
  driverId INT,
  driverRef string,
  number INT,
  code STRING,
  name STRUCT <forename STRING, surname STRING>,
  dob DATE,
  nationality STRING,
  url STRING

)
USING json
OPTIONS (path "/mnt/formula1dlyus/raw/drivers.json")

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Create results

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.results;

CREATE TABLE IF NOT EXISTS f1_raw.results(
                                  resultId       Integer,
                                  raceId Integer,
                                  driverId Integer,
                                  constructorId Integer,
                                  number Integer,
                                  grid Integer,
                                  position Integer,
                                  positionText String,
                                  positionOrder Integer,
                                  points Float,
                                  laps Integer,
                                  time String,
                                  milliseconds Integer,
                                  fastestLap Integer,
                                  rank Integer,
                                  fastestLapTime String,
                                  fastestLapSpeed Float,
                                  statusId String)
USING json
OPTIONS (path "/mnt/formula1dlyus/raw/results.json")

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Pit stops table

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.pit_stops;

CREATE TABLE IF NOT EXISTS f1_raw.pit_stops(
  driverId INT,
  duration STRING,
  lap INT,
  milliseconds INT,
  raceId INT,
  stop INT,
  time STRING
)

USING JSON
options(path "/mnt/formula1dlyus/raw/pit_stops.json", multiline true)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Create tables from multiple lines
-- MAGIC

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.lap_times;

CREATE TABLE IF NOT EXISTS f1_raw.lap_times(
  raceId INT,
  driverId INT,
  lap INT,
  position INT,
  time STRING,
  milliseconds INT
)

USING csv
OPTIONS( path "/mnt/formula1dlyus/raw/lap_times")



-- COMMAND ----------

select count(1) FROM f1_raw.lap_times

-- COMMAND ----------

DROP TABLE IF EXISTS f1_raw.qualifying;

CREATE TABLE IF NOT EXISTS f1_raw.qualifying(
                                      qualifyId      Integer,
                                      raceId Integer,
                                      driverId Integer,
                                      constructorId Integer,
                                      number Integer,
                                      position Integer,
                                      q1 String,
                                      q2 String,
                                      q3 String
                                     
)

USING json
OPTIONS( path "/mnt/formula1dlyus/raw/qualifying", multiline True)


-- COMMAND ----------

select count(1) FROM f1_raw.qualifying
