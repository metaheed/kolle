# End-to-end pipeline from flatten model to knowledge graph model

As a part of this tutorial, we will see how to transfer the document model to the knowledge graph model using Kolle without writing any single line of code.

For the purpose and details of document db and knowledge graph will not cover in this tutorial, please ask chatGPT and looks on Wikipedia.

Domain: Insurance claim

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/tree/main/data/samples/mongodb/claims.json)

#### High level

Flatten model -> data contract -> Knowledge graph model

Producer: Flatten model

Consumer: Knowledge graph model

### Processing step

1. Importing source models from policy datasets
2. Remove duplicate data from source data
3. Data profiling on the source data
4. Apply data contract for data quality i.e selection, typecast, enrichment, reference data integration, etc
   4a. Good data will move to refined model
   4b. Bad data will move to refined error model
5. Data profiling on refined data
6. Convert to the RDF model from refined model as the target model
7. Visualize data as knowledge graph

### Technical setup

1. CSV file as a source
2. Kafka for event streaming to ingest and process data in real-time
3. Stardog as a target for knowledge graph
4. Kolle for metabase repository and automation

### Show me

[![Introduction](https://img.youtube.com/vi/VEIWuMkZzaI/0.jpg)](https://youtu.be/VEIWuMkZzaI)

