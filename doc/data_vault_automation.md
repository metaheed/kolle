### Convert relational model to data warehouse data vault model

As a part of this tutorial, we will see how to transfer the relational model to the data vault model using Kolle without writing any single line of code.

For the purpose and details of data vault model will not cover in this tutorial, please ask chatGPT and looks on Wikipedia.

Domain: Insurance policy

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/blob/main/data/samples/mysql/policies.csv)

#### High level

Relational model -> data contract -> Data vault model

### Processing step

1. Importing source models from policy datasets
2. Remove duplicate data from sources data
3. Data profiling on the raw data
4. Apply data contract for data quality i.e selection, typecast, enrichment, reference data integration, etc

   5a. Good data will move to refined model

   5b. Bad data will move to refined error model
5. Data profiling on refined data
6. Apply patten to convert refined to data vault model automatically
7. View data as data vault model

### Technical setup

1. CSV as a source for document data
2. Kafka for event streaming to ingest and process data in real-time
3. Postgres as a target for data vault storage
4. Kolle for metabase repository and automation

### Show me
