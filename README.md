# Formula1 Racing
This repository explores Real World Project on Formula1 Racing using Azure Databricks, Delta Lake, Unity Catalog, Azure Data Factory

## Solution Architecture
![image](https://github.com/user-attachments/assets/fd231956-51d5-4ad8-8e1f-4a4d318b1624)

## Data Files
<img width="681" alt="image" src="https://github.com/user-attachments/assets/8b275c74-c456-4e9f-a147-29b0f6e9774f">

## Data Ingestion Requirements
1. Ingest all 8 files into the data lake
2. Ingested data must have the schema applied
3. Ingested data must have audit columns
4. Ingested data must be stored in columnar format
5. The data must be analyzed via SQL
6. Ingestion logic must be able to handle incremental load

## Data Transformation Requirements
1. Join the key information for reporting to create a new table.
2. Join the key information required for Analysis to create a new table
3. Transformed tables must have an audit columns
4. Ingested data must be stored in columnar format
5. The data must be analyzed via SQL
6. Ingestion logic must be able to handle incremental load

## Reporting Requirements
1. Driver Standings
   ![image](https://github.com/user-attachments/assets/0e65d54f-67c6-458b-b9ed-a6da00a3fb6b)

3. Constructor Standings
  ![image](https://github.com/user-attachments/assets/b82e2937-270b-44a3-8f2b-6a043fbbc42d)



## Analysis Requirements
1. Dominant Drivers
2. Dominant Teams
3. Visualize the outputs
4. Create Databriscks Dashboards

## Scheduling Requirements
1. Scheduled to run every Sunday 10PM
2. Ability to run the monitor pipelines
3. Ability to re-run failed pipelines
4. Ability to set-up alerts on failures

## Other Non-functional requirements
1. Ability to delete individual records
2. Ability to see history and time travel
3. Ability to roll back to a previous version
   


