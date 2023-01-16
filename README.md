# kolle
Low/Zero code based metadata driven data pipeline automation

# Why

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


## Kolle Introduction - why
[![Introduction](https://img.youtube.com/vi/tH62kZcYEEo/0.jpg)](https://www.youtube.com/watch?v=tH62kZcYEEo "About Kolle")

## Triple to ksql reactive code generator and visualization 
[![code generator](https://img.youtube.com/vi/XD-yRu6babw/0.jpg)](https://www.youtube.com/watch?v=XD-yRu6babw "Reactive code generator")


## Remove duplicate row from csv file
[![Distinct Example](https://img.youtube.com/vi/a7qhi7gLFI8/0.jpg)](https://www.youtube.com/watch?v=a7qhi7gLFI8 "Kolle Distinct Example")

## XML Import


## Data vault example
[![Data vault](https://img.youtube.com/vi/UX1qGB8jcU4/0.jpg)](https://www.youtube.com/watch?v=UX1qGB8jcU4 "Data vault Example")



## License

Copyright © 2022-2023 Abdullah Mamun

Distributed under the EPL License. See LICENSE.

This project contains code from:
- Clojure, which is licensed under the same EPL License.
