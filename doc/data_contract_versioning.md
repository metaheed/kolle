### Data contract versioning

As a part of this tutorial, we will see how to build data_contract versioning using Kolle without writing any single line of code.

For details of data contract will not cover in this tutorial, please ask chatGPT and looks on Wikipedia.

Domain: Insurance policy

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/blob/main/data/samples/mysql/policies.csv)

### High level

Data_Producer_V1  -> Data_Contract_V1 -> Data_Consumer_V1

Data_Producer_V1  -> Data_Contract_V2 -> Data_Consumer_V2

Data consumer needs additional data or calculated data from the producer but on the producer side, there are no changes. After creating the new data_contract version new consumer model will be run in parallel with the data contract.

### Processing step

1. Importing source model from JSON file.
2. Apply flatten on source model to build raw model
3. Create data contract version 1 for consumer data version 1
4. Deploy data contract to platfrom
5. Create data contract version 2 for consumer data version 2
6. Deploy data contract to platfrom
7. Check both version in platfrom.

### Technical setup

1. JSON file as data producer
2. Kafka for event streaming to ingest and process data in real-time
3. Kafka topic for consumers 1 and 2
4. Kolle for metadata repository and automation

### Show me


[![Introduction](https://img.youtube.com/vi/-ZGYN1tjuz4/0.jpg)](https://youtu.be/-ZGYN1tjuz4)
