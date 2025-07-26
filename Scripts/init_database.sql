/*
========================================
Create Database and Schemas (MySql Equivalent)
========================================
Script Purpose:
  This script creates a new databse named 'DataWarehouse' after checking if it already exists. If the 
  database exsits, it is dropped and recreated. Additionally, the script sets up three schemas within
  the databse: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists. All data in the 
  database will be permantently deleted. Proceed with caution and ensure you had proper backups
  before running this script.
*/

-- Drop the DataWarehouse database if it already exists  
DROP DATABASE IF EXISTS `DataWarehouse`;

-- Recreate it  
CREATE DATABASE `DataWarehouse`;

USE DataWarehouse;

-- bronze layer table (raw)
CREATE TABLE bronze (
    _placeholder INT    
);

-- silver layer table (cleaned/enriched)
CREATE TABLE silver (
    _placeholder INT 
);

-- gold layer table (business‑ready)
CREATE TABLE gold (
    _placeholder INT 
);
