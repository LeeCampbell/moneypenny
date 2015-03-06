# MoneyPenny

MoneyPenny is a repository of scripts to enable automated testing of cloud based producer/consumer achitectures.

---

The goal of this repository is to be able automate the creation, provisioning and performance testing of various producer/consumer products on the cloud.

##Types of tests
Various performance tests will be made available. As some products will suport various configurations and not others and some may perform better under varying load, we will provide a range of tests.

 * Latency testing
 * Throughput testing

###Message sizes
We will test various sizes of messages. 
Some systems performoptimally with large message sizes, some show their strenght when working with small message sizes.
This will allow us to identify which is fit for purpose.

 * 40 Bytes  - represent tick data in the finance space
 * 500B      - represent a nominal command/request/ack in JSON/XML
 * 1KB       - represent a set/batch of records
 * 4KB       - sweet spot for many systems.
 * 200k      - represent an HTTP response
 * 1MB       - large message payload
 
###Environment configurations
The environments will be a combination of the following setups
 * Producers
   * Single Producer
   * 3 Producers
   * 5 Producers
   * N Producers (for custom runs)* 
 * Consumers
   * single consumer
   * 3 competing consumers (i.e. when consumer dequeues a message)
   * 5 competing consumers 
   * N competing consumers (Custom run)
   * broadcast 3 consumer (i.e. when all consumers get a copy of every message)
   * broadcast 5 consumer 
   * broadcast N consumer (Custom run)
 * Product cluster size
   * Single node
   * 3 node cluster
   * 5 node cluster
   * N node cluster (Custom run)
 * Cloud
   * Cloud Provider (EC2/RackSpace/Azure/DigitalOcean)
   * Product instance type (2.micro/m3.Medium/etc..)
   * Client (producer consumer) instance type
 
*'Custom Runs' will not be part of the standard automated suite of tests. Users can however add custom runs to their own scripts to test other variations.
 

##Metrics gathered
The basic metrics we will gather will be 
 * Total messages 
 * Total test time
 * Mean msg/s (obviously derived from total msg / total time). When aggregated with other test data we should be able to [visualize](http://leecampbell.blogspot.co.uk/2014/01/replaysubject-performance-improvements.html)
 * [Latency histogram](https://github.com/HdrHistogram/HdrHistogram)
 * Total cost to run test (in $US)

##Planned products to include in test suite
Our initial approach will only include "free" software.
Products that require a licence (except perhaps products with trial licences) will not be an initial priority.
These include but not limited to Tobco products, Universal Messaging, Oracle Coherence

 * Reactive distrubuted data stored
   * [Kafka](http://kafka.apache.org/) _as an EventStore_
   * [Redis](http://redis.io/)
   * [CouchDB](http://couchdb.apache.org/)
   * [EventStore](geteventstore.com)
 * Message Queues 
   * [ActiveMq](http://activemq.apache.org/)
   * [RabbitMq](http://www.rabbitmq.com/)
   * [0mq](http://zeromq.org/)
