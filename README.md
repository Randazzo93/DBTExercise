### Overview
Mini pipeline project using DBT cloud, bigquery, and stack overflows public DB.

## Process
* Create a query that ranks score (trending) and views (popularity) for post that are questions with zero answers
* Set up enviorment for Dev and Prod to make identify changes in dev before making live in prod
* run test on table for unique primary key and no null primary key
* create snapshot to keep track of all changes in the table for future analysis

## Diagram

![ModelDiagram](https://user-images.githubusercontent.com/87403512/139498376-803d3564-e0c2-442a-b55c-78c62dcd1182.PNG)

## DBT Commands

Try running the following commands:
- dbt run
- dbt test
- dbt snapshot

## Exercise Details

Stack Overflow is an open community for anyone that writes, reads, or reviews code. It helps members get answers to some of their toughest questions, share knowledge, and find their next dream job. 

In this exercise, we’d like to play the part of a Stack Overflow stakeholder asking a question of their data. 

> What questions are popular and trending, but not being answered? 

To accomplish this - we’d like you to make use of the following tool set. These are either open source or have free trials

* Google Big Query (https://cloud.google.com/bigquery/docs/sandbox)
* dbt (the CLI should be fine for this project, but if you want to deploy it to the cloud feel free 🙂 , https://www.getdbt.com/signup/)
* Github (https://github.com/)
* The publicly available StackOverlow data set (https://cloud.google.com/blog/products/gcp/google-bigquery-public-datasets-now-include-stack-overflow-q-a)
    * You can find an ERD of the overall data set here (https://sedeschema.github.io/)



## Exercise Deliverables

* A dbt project created, developed and tested to a standard you think a data consumer would expect in the time frame allotted. Stored in a public Github repository. 
* A Google BigQuery data set, populated with data from the stack overflow sample data set and modeled with dbt to answer the question posed above. 
* A data model diagram that provides a visual representation of your data model
