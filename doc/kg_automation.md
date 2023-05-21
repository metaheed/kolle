# End-to-end pipeline from document model to knowledge graph model

As a part of this tutorial, we will see how to transfer the document model to the knowledge graph model using Kolle without writing any single line of code.

For the purpose and details of document db and knowledge graph will not cover in this tutorial, please ask chatGPT and looks on Wikipedia.

Domain: Insurance claim

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/tree/main/data/samples/mongodb/claims.json)

#### High level

Document model -> Flatten model -> data contract -> Knowledge graph model

Producer: Document model

Consumer: Knowledge graph model

### Processing step

1. Importing source models from claim datasets
2. Applying flattening to build a flattened model from a semi-structure source data
3. Remove duplicate data from flattened data
4. Data profiling on the flattened raw data
5. Apply data contract for data quality i.e selection, typecast, enrichment, reference data integration, etc

   5a. Good data will move to refined model

   5b. Bad data will move to refined error model
6. Data profiling on refined data
7. Convert to the RDF model from refined model as the target model
8. Visualize data as knowledge graph

### Technical setup

1. MongoDB as a source for document data
2. Kafka for event streaming to ingest and process data in real-time
3. Stardog as a target for knowledge graph
4. Kolle for metabase repository and automation

### Show me
