# kolle
Zero code based metadata driven data pipeline automation

# Features
- Metadata harvesting
- Data(XML, JSON, CSV, ZIP ) to schema generator
- Schema to schema transformation
- Data quality based on data catalog
- Custom domain type
- Handling schema change automatically
- Real time code generation (KSQL, Kafka topic, kafka connector, Avro schema)
- Real time collaboration within multiple user
- Incremental deployment
- Batch cleanup (only process or only storage or both process and storage)
- View data in nice UI
- Download data in many different format like xml, rdf, json, and csv
- Integration with any (cloud, on promise) confluent platform
- Many pattern - dead latter queue, distinct, data-vault model converter and more

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


# Example 
[![Distinct Example](https://www.youtube.com/watch?v=a7qhi7gLFI8/0.jpg)](https://www.youtube.com/watch?v=a7qhi7gLFI8)


## License

Copyright © 2021-2022 Abdullah Mamun

Distributed under the EPL License. See LICENSE.

This project contains code from:
- Clojure, which is licensed under the same EPL License.
