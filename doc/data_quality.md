# Data contract and Logical type

Logical type is encapsulate machine types like string, int, double with domain types like email, age and credit amount, etc. It is easy to understand and it tells what is the meaning of the type. Syntactic validation conditions can be encapsulated within a type for example regular expression of email validation will be inside the email type.

As a part of this tutorial, I am going to show how to use create logical type and use tiny type as part data contract process.

Domain: Insurance claim

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/tree/main/data/samples/mongodb/claims.json)

#### High level

Import producer model -> Logical type and data contract -> Consumer model

Logical type

### Processing step

1. Importing source models from claims
2. Create data contract with different tiny type
3. View impact of logical type

### Technical setup

1. Json file as a source
2. Kafka for event streaming to ingest and process data in real-time
3. Kolle for metabase repository and lineage

### Show me

[![Introduction](https://img.youtube.com/vi/KjhzL5pl9j4/0.jpg)](https://youtu.be/KjhzL5pl9j4)

