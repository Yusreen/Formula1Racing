-- Databricks notebook source
DROP DATABASE IF EXISTS f1_processed CASCADE;
CREATE DATABASE IF NOT EXISTS f1_processed COMMENT 'This is External table' LOCATION '/mnt/formula1dlyus/processed'
  ;

-- COMMAND ----------

DESC DATABASE f1_raw;

-- COMMAND ----------

DESC DATABASE f1_processed

-- COMMAND ----------

-- MAGIC %fs
-- MAGIC ls /mnt/formula1dlyus/processed/
