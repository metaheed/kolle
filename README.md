# kolle
Zero/Low code based business model representation automation

# Why
- Coming soon

# Video Overview
[![Introduction](https://img.youtube.com/vi/YKqOaEwPA6Q/0.jpg)](https://youtu.be/YKqOaEwPA6Q "About Kolle")


# Features
- Metadata harvesting
- Data(XML, JSON, CSV, ZIP ) to model generator
- Model to model transformation
- Data quality based on data catalog
- Custom micro type
- Handling model change automatically
- Real time code generation (KSQL, Kafka topic, kafka connector, Avro schema)
- Real time collaboration within multiple user
- Incremental deployment
- Batch cleanup (only process or only storage or both process and storage)
- Data view
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

``` shell
$ docker pull ghcr.io/metaheed/kolle
$ docker run -it -p 3000:3000 --rm ghcr.io/metaheed/kolle
```

# Next Features
- Data profiling
- Test data quality at any point
- Data generator



## License

Copyright © 2022-2023 Abdullah Mamun

Distributed under the MIT License. See LICENSE.
