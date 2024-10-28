-- Databricks notebook source
DROP DATABASE IF EXISTS f1_presentation CASCADE;
CREATE DATABASE IF NOT EXISTS f1_presentation COMMENT 'This is External table' LOCATION '/mnt/formula1dlyus/presentation'
  ;

-- COMMAND ----------

DESC DATABASE f1_raw;

-- COMMAND ----------

DESC DATABASE f1_presentation 

-- COMMAND ----------

-- MAGIC %fs
-- MAGIC ls /mnt/formula1dlyus/presentation
