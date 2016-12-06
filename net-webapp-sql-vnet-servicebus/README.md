# .Net Web App, Azure SQL database, VLAN and Service Bus

	Simple application which stores in database each request from client, client IP address is recognized in Geo-IP service and recognized location is stored in Azure SQL database. Each request is also serialized to JSON send to Service Bus topic.

![Architecture](img/architecture.png)

## Scenario 1 - use Visual Studio to deploy app

- Create simple project
-- One page with table retrieved from DB

