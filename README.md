# kolle

Zero/Low code based business model representation automation

# Why

Kolle is for working on data models, data-contract, data quality, data profiling, and data linage instead of technical tooling.

Today for business continuation, the business model needs to represent in many ways normalized form for transactional data, a time-series database for process mining, a knowledge graph for semantics search or link data, a data-vault or snowflake model for data warehouse, a streaming model for the real-time event and columnar storage for machine learning. To move or prepare the data and model for multiple types of consumption is not only expensive but has a lot of repetition costs for the team and technology setup. Automation needs to be in place to reduce repetition costs.

There are many ways to start automation of data processing or data ingestion. Someone starts with infrastructure or tooling or starts writing code immediately. But Kolle uses a data modeling approach and data modeling is the first class citizen to this automation process.

Kolle enables users to work on data models, data contracts, metadata, data quality, and data lineage. Users will spend 90% of their time focusing on business work instead of spending time on different sets of tooling. End to end data integration will be generated based on data model and data contract.

It is just 5 to 10 min of work to create end-to-end integration between different types of producers and consumers.

# Video Overview

[![Introduction](https://img.youtube.com/vi/YKqOaEwPA6Q/0.jpg)](https://youtu.be/YKqOaEwPA6Q "About Kolle")

# Features

- Metadata harvesting
- Data(XML, JSON, CSV, ZIP ) to model generator
- Model to model transformation
- Data quality based on micro type
- Custom micro type
- Captuaring model change automatically
- Real time code generation and visualization
- Real time collaboration within multiple user
- Incremental deployment
- Batch cleanup (only flow or only storage or both flow and storage)
- Data view for xml, json, csv
- Data profiling
- Download data in many different format like xml, rdf, json, and csv
- Integration with any (cloud, on promise) confluent platform
- Many pattern - dead latter queue, distinct, data-vault model converter and more

# Reference Architecture

![Alt text](doc/kolle_blueprint.png?raw=true "Title")

# Install

- Try online
  [Kolle](https://kolle.metaheed.com).
- Run locally

```shell
$ docker pull ghcr.io/metaheed/kolle
$ docker run -it -p 3000:3000 --rm ghcr.io/metaheed/kolle
```

## License

Copyright © 2022-2023 Abdullah Mamun

Distributed under the Apache License. See LICENSE.
