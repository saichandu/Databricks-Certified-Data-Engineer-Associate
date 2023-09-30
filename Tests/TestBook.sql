-- Databricks notebook source
create table Person (FIRST_NAME String, LAST_NAME String, EMAIL String, AGE int)

-- COMMAND ----------

insert into person
values('John', 'Carter', 'john.carter@gmail.com', 10);
insert into person
values('Kushal', 'Avvaru', 'kushal.avvaru@gmail.com', 8);
insert into person
values('Dhruva', 'Avvaru', 'dhruva.avvaru@gmail.com', 7);

-- COMMAND ----------

select * from person

-- COMMAND ----------

DESCRIBE detail person

-- COMMAND ----------

DESCRIBE history person

-- COMMAND ----------

update person set age=age+1

-- COMMAND ----------

-- MAGIC %fs ls dbfs:/user/hive/warehouse/person

-- COMMAND ----------

describe history person

-- COMMAND ----------

select * from person version as of 4

-- COMMAND ----------

optimize person zorder by (LAST_NAME)

-- COMMAND ----------

describe detail person

-- COMMAND ----------

-- MAGIC %fs ls dbfs:/user/hive/warehouse/person
