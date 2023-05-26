### Convert document model to data warehouse data vault model

As a part of this tutorial, we will see how to transfer the relational model to the data vault model using Kolle without writing any single line of code.

For the purpose and details of data vault model will not cover in this tutorial, please ask chatGPT and looks on Wikipedia.

Domain: Insurance policy

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/blob/main/data/samples/mysql/policies.csv)

#### High level

Relational model -> data contract -> Data vault model

### Processing step

1. Importing source models from semi structure document datasets
2. Flatten semi structure model
3. Remove duplicate data from sources data
4. Data profiling on the raw data
5. Apply data contract for data quality i.e selection, typecast, enrichment, reference data integration, etc

   5a. Good data will move to refined model

   5b. Bad data will move to refined error model
6. Data profiling on refined data
7. Apply patten to convert refined to data vault model automatically
8. View data as data vault model

### Technical setup

1. Json as a source for document data
2. Kafka for event streaming to ingest and process data in real-time
3. Postgres as a target for data vault storage
4. Kolle for metabase repository and automation

### Show me

[![Introduction](https://img.youtube.com/vi/rBooWhPqZX8/0.jpg)](https://youtu.be/rBooWhPqZX8)
