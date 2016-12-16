# .NET Web App, SQL, DocumentDB, ServiceBus, Function Apps, Application Insights

Simple ToDo application which uses ASP NET MVC front end, data are stored in Azure SQL database and each new ToDo item is processed to Service Bus. From Service bus are messages processed by Function Apps which are connected to Service Bus events. Function Apps create new entries in DocumentDB which is used like a storage for "comments" record for each ToDo record.  

## Prepare Azure resources

- Create Web App and Resource group which will host our application
    - in Azure portal click on resource group button in tool bar and than on "+ Add" button
    - ![img1](img/img1.PNG)
    - Enter Resource group name and select right location for your resources
    - ![img2](img/img2.PNG)
    - Create Web App - click on green "+" button in left top corner and enter "web app" to search area and press enter
    - ![img3](img/img3.PNG)
    - Azure will show list of resources which can be created, use "Web App" - Microsoft/Web + Mobile and click "Create Button
    - ![img4](img/img4.PNG)
    - Enter valid app name and select your existing Resource group created in previous steps
    - ![img5](img/img5.PNG)
- Create Azure SQL database
    - Again use green "+" for creating new resource, enter "sql" to search area and press Enter
    - ![img6](img/img6.PNG)
    - From list of resources select "SQL Database" - Microsoft/Database and than click Create button
    - ![img7](img/img7.PNG)
    - Enter following data in creation form:
        - valid "Database name"
        - use existing Resource group created in previous steps
        - Create new "Server"
            - valid "Server name"
            - valid "Server name login"
            - valid "Password"
            - and right Location for your server
            - than click on Select button
        - Select right pricing tier
        - Click on Create button 
    - ![img8](img/img8.PNG)
- Create DocumentDB database
    - Use green "+" button and and enter "documentdb" to search area
    - ![img101](img/img101.PNG)
    - From list of resources select "NoSQL (DocumentDB)" - Microsoft/Storage and click Create
    - ![img102](img/img102.PNG)
    - Enter valid ID for database
    - Use existing Resource group and right location for your resource
    - Click on Create button
    - ![img103](img/img103.PNG)
- Wait for deploying all services

## Deploy Web App


## Create VLAN for on-prem emulator

## Create on-prem emulator in VLAN (VM)

## Test VLAN integration

## Create Service Bus and test messaging

## Create Func App for messages processing

create computer, integrate

create service bus, integrate
- todotopic
    - Category

create func app
 


