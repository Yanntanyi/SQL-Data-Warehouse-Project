/*
========================================
Create Database and Schemas 
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

-- Create Database 'DataWarehouse'

-- 1) Create the database in its own batch
USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

-- 2) Switch to it in its own batch
USE DataWarehouse;
GO

-- 3) Create your schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
