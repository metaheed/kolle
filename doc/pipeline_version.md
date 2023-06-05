### Data pipeline versioning

As a part of this tutorial, we will see how to build data pipeline versioning using Kolle without writing any single line of code.

Domain: Insurance policy

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/blob/main/data/samples/mysql/policies.csv)

### High level

Data_Producer  -> Data_Contract -> Data_Consumer

Create new version of whole process 

### Processing step

1. Importing source model from CSV file.
2. Remove duplicate from source file
3. Create data contract version 1 for consumer data version 1
4. Deploy data contract to platfrom
5. Create new name space and deploy it platform

### Technical setup

1. CSV file as data producer
2. Kafka for event streaming to ingest and process data in real-time
3. Kolle for metadata repository and automation

### Show me

Coming soon...
