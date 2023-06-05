# Ingest and process XML data and download as knowledge graph or flatten model

As a part of this tutorial, we will see how to transfer the XML data to the knowledge graph model using Kolle without writing any single line of code.

Domain: Microsoft sample books.xml

Source data: [Datasets](https://learn.microsoft.com/en-us/previous-versions/windows/desktop/ms762271(v=vs.85))

#### High level

XML data -> Flatten model -> data contract -> RDF data

Producer: XML data

Consumer: RDF data

### Processing step

1. Importing XML data
2. Applying flattening to build a flattened model from a semi-structure source data
3. Apply data contract for data quality i.e selection, typecast, enrichment, reference data integration, etc
4. 5a. Good data will move to refined model

   5b. Bad data will move to refined error model
5. Data profiling on refined data
6. Download as rdf data

### Technical setup

1. XML as input data source
2. Kafka for event streaming to ingest and process data in real-time
3. Kolle for metabase repository and automation

### Show me
