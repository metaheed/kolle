# Data lineage

As a part of this tutorial, we will see how to view data lineage using Kolle without writing any single line of code.

According to the search engine- Data lineage is the process of tracking the flow of data over time, providing a clear understanding of where the data originated, how it has changed, and its ultimate destination within the data pipeline.

There are two types of data lineage One is business lineage and the other one is technical lineage. Business lineage provides a high-level view of data for the user who want to see what is the source of data and where it is going as a destination to ensure data privacy rule or validate any other legal requirement. Technical lineage enables users to view details of transformation and drill down into schema and attributes level.

Using Kolle's automated data lineage, users can view the transformation and link between the producer and consumer model.

Domain: Insurance claim

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/tree/main/data/samples/mongodb/claims.json)

#### High level

Import producer model -> Transformation -> Consumer model

End to end lineage

### Processing step

1. Importing source models from claims
2. Data transformation
3. Data lineage between producer and consumer

### Technical setup

1. Json file as a source
2. Kafka for event streaming to ingest and process data in real-time
3. Kolle for metabase repository and lineage

### Show me

[![Introduction](https://img.youtube.com/vi/tFWhxj-SCPA/0.jpg)](https://youtu.be/tFWhxj-SCPA)

