### Data profiling before and after data contract

As a part of this tutorial, we will see how do data profiling before and after data-contract using Kolle without writing any single line of code.

Data examing, analyzing and creating userfull summaries of producer data is an important part to prepare consumer datasets. So data profiling is an important step before and after data contract implementation.

Domain: Insurance claim

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/tree/main/data/samples/mongodb/claims.json)

### High level

Data producer -> **Producer data profiling** -> data contract -> Data consumer -> **Consumer data profiling**

### Processing step

1. Importing JSON file as produce source
2. Flatten semi structure json data
3. Data profiling on raw flatten model
4. Apply data contract on raw flatten model
   * Good data will move to refined model
   * Bad data will move to error model
5. Data profiling on refined model

### Technical setup

1. Json as a source for document data
2. Kafka for event streaming to ingest and process data in real-time
3. Kolle data profiling UI
4. Kolle for metadata repository and automation

### Demo

Coming soon...
