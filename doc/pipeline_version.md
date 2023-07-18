### Data pipeline versioning using blue green deployment

As a part of this tutorial, we will see how to build data pipeline versioning using Kolle without writing any single line of code. Blue-green deployment will be used for data pipeline versioning. Blue green deployment is fast, easy to deploy and rollback.

Domain: Insurance policy

Source data: [Datasets](https://github.com/databricks-industry-solutions/dlt-insurance-claims/blob/main/data/samples/mysql/policies.csv)

### High level

Version_0  -> Version_1 -> version_2

### Processing step

1. Build data pipeline from semi structure data
2. Deploy pipeline as version_0
3. Copy from current version_0 to new version_1
4. Deploy new version_1 and switch triffic to version_1
5. Remove version_0 from system
6. Create new version_2 from current version_1
7. Rollback version_2 and continue with version_1

### Technical setup

1. Json file as data producer
2. Kafka for event streaming to ingest and process data in real-time
3. Kolle for metadata repository and automation

### Show me

[![Introduction](https://img.youtube.com/vi/OjXt6QHX-r4/0.jpg)](https://youtu.be/OjXt6QHX-r4)


