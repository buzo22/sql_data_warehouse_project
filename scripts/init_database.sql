/*
====================================================================================
Create Database and Schemas
====================================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated.Additinally, the script sets up the three schemas
  within the database: 'bronze', 'silver', 'gold'.

WARNING:
Running this scripts will drop the entire 'DataWarehouse' database if it exists.
All data in the database will be parmenently deleted. Proceed with caution 
and ensure you have proper backups before running this script.
*/




USE master;
GO

-- Drop and recreate the 'Data Warehouse' database
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBASK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
