# Tokyo Olympics Data Engineering Project

An end-to-end data engineering pipeline on Microsoft Azure. Raw Tokyo 2020
Olympics data is ingested with Azure Data Factory, transformed with PySpark on
Azure Databricks, and analysed with SQL in Azure Synapse Analytics.

## Architecture
Raw CSV data
-> Azure Data Factory (ingestion pipeline)
-> Azure Data Lake Storage Gen2 (raw-data)
-> Azure Databricks / PySpark (transformation)
-> Azure Data Lake Storage Gen2 (transformed-data)
-> Azure Synapse Analytics (SQL analysis)

## Dataset
Five CSV files about the Tokyo 2020 Olympics: athletes, coaches,
entries by gender, medals and teams.

## What the pipeline does
1. Ingests the data into the data lake with an Azure Data Factory pipeline
2. Mounts the storage container in Databricks using OAuth
3. Reads the five CSV files into Spark DataFrames with schema inference
4. Casts the Female, Male and Total columns of the gender entries data to integers
5. Ranks countries by number of gold medals
6. Calculates the female and male share of entries for each discipline
7. Writes the transformed data back to the data lake as CSV files
8. Runs SQL analysis on the transformed data in Synapse

## SQL analysis
- Total number of athletes per country
- Total gold, silver and bronze medals per country
- Average female and male entries per discipline

## Technologies
Azure Data Factory, Azure Data Lake Storage Gen2, Azure Databricks, PySpark,
Azure Synapse Analytics, SQL

## Repository contents
- `Tokyo Olympic Transformation.py`: Databricks transformation code (PySpark)
- `SQL script 1.sql`: Synapse SQL analysis queries
- `data-ingestion.zip`: Azure Data Factory pipeline
- `athletes(14).csv`, `Coaches(2).csv`, `medals.csv`, `Teams(5).csv`: source data

## Setup note
The Azure credentials in the code are placeholders. To run it yourself, use
your own Azure app registration and keep the client secret in a Databricks
secret scope instead of writing it in the code.

## What I learned
- Building a cloud data pipeline across several Azure services
- Reading, casting and transforming data with PySpark
- Writing SQL aggregation queries for analysis
