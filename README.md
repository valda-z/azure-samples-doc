# Azure LABs 

## 1. [IaaS, VLAN, Loadbalancer](iaas-vlan-loadbalancer/README.md)

Deploying two VMs in Availability set with load balancer. Demonstrate HA environment with SLA.

## 2. [SWARM](swarm/README.md)

Deploying SWARM cluster and demonstrate publishing docker images to cluster with possibility of setting docker container afinity in cluster.

## 3. [Simple PaaS SQL, Web App](simple-paas-sql-webapp/README.md)

Very simple Web App deployed directly by "GitHub publish" button.

## 4. [.Net Web App, Sql, VLAN, ServiceBus](net-webapp-sql-vnet-servicebus/README.md)

Simple application which stores in database each request from client, client IP address is recognized in Geo-IP service and recognized location is stored in Azure SQL database. Each request is also serialized to JSON send to Service Bus topic.

## 5. [Java Web App, DocumentDB, VLAN, ServiceBus](java-webapp-documentdb-servicebus/README.md)

Simple ToDo application which stores data in DocumentDB and calls backend service "GeoIP" on VLAN (simulating on-prem system). Each request is also serialized to JSON send to Service Bus topic.

## 6. [Java/.NET Web App, Sql(Always Encrypted + TDE)](java-net-webapp-sql-always-encrypted/README.md)

Create web app deployed to web app service which uses PaaS Azure SQL database for data storing, SQL database is in TDE mode with enabled Always Encrypted behavior for selected columns in data table.

## 7. [.Net Web App, Sql, VLAN, Service Bus, Application Insights](net-webapp-sql-servicebus-insights/README.md)

Simple ToDo application which uses ASP NET MVC front end, data are stored in Azure SQL database and each new ToDo item is processed to Service Bus. From Service bus are messages processed by Function Apps which are connected to Service Bus events. Function Apps create new entries in DocumentDB which is used like a storage for "comments" record for each ToDo record.  

## 8. [JAVA Web App, Sql, Service Bus, Application Insights](java-webapp-sql-servicebus-insights/README.md)

Simple ToDo application which uses spring-boot front end (Web App on Linux hosting docker image), data are stored in Azure SQL database and each new ToDo item is processed to Service Bus. From Service bus are messages processed by Function Apps which are connected to Service Bus events. Function Apps create new entries in DocumentDB which is used like a storage for "comments" record for each ToDo record. 

## 9. [Azure Batch Service](azbatch/README.md)

Example node.js project which uses Azure Batch Service for parallel processing during image transformation - linearly scalable pool of VMs (include cheap "Low priority VMs").

## 10. [Kubernetes federation](kubefed/README.md)

Example how to provision kubernetes clusters in federation (cluster of clusters).    

## 11. [Function App demo](../../../functionapp-demo)

Simple demo how to create single page web app powered by angularjs, Function app and Azure Cosmos DB - provisioned by single template.    

