# SQL Bootcamp

Опыт, полученный в результате выполнения заданий:
- углубленное понимание языка SQL, включая базовые операции и сложные конструкции для извлечения и изменения данных;
- работа с реляционными базами данных(создание и управление базами данных, таблицами, индексами и связями);
- выполнениие операций JOIN для извлечения данных из нескольких таблиц;
- выполнения DML операций для изменения данных, включая вставку, обновление и удаление записей;
- создание и использование функций и хранимых процедур (разработка и оптимизация функций для автоматизации процессов в базах данных);
- знакомство с уровнями изоляции транзакций и их влияния на целостность данных;
- оптимизация запросов с помощью создания индексов и анализа производительности запросов;
- представление решений во время проверок и обсуждение результатов с другими участниками интенсива.

## Contents

1. [Project description](#project-description)
2. [Description of the days](#description-of-the-days)
3. [The database model](#the-database-model)
4. [Materials](#materials)

## Project description

SQL Bootcamp at School21 is an introduction to SQL language and databases in the intensive format: you need to complete exercises and present your solutions to other students every day to succeed at the Bootcamp. Each module (day) in Bootcamp contains tasks dedicated to implementation of SQL statements to retrieve needed data from given database.
Database Management System used in Bootcamp is PostgreSQL.

## Description of the days

- Day00: studying the relational model, extracting data based on basic SQL constructs.
- Day01: Extracting the necessary data using set operations and simple joins.
- Day02: Extracting the necessary data using different connection types.
- Day03: Changing the necessary data using the Data Manipulation Language (DML).
- Day04: Using virtual representation and physical snapshots of data.
- Day05: Database indexes are created, including the timing of their implementation.
- Day06: Integration of a new business function into the data model.
- Day07: OLAP constructions for extracting information from data.
- Day08: Introduction to transaction isolation levels and their importance in database management.
- Day09: Creating and using functions and stored procedures in databases.

## The database model

A [script](materials/model.sql) with a database model.

![schema](misc/images/schema.png)

1. **pizzeria** table (Dictionary Table with available pizzerias)

- field id — primary key
- field name — name of pizzeria
- field rating — average rating of pizzeria (from 0 to 5 points)

2. **person** table (Dictionary Table with persons who loves pizza)

- field id — primary key
- field name — name of person
- field age — age of person
- field gender — gender of person
- field address — address of person

3. **menu** table (Dictionary Table with available menu and price for concrete pizza)

- field id — primary key
- field pizzeria_id — foreign key to pizzeria
- field pizza_name — name of pizza in pizzeria
- field price — price of concrete pizza

4. __person_visits__ table (Operational Table with information about visits of pizzeria)

- field id — primary key
- field person_id — foreign key to person
- field pizzeria_id — foreign key to pizzeria
- field visit_date — date (for example 2022-01-01) of person visit

5. __person_order__ table (Operational Table with information about persons orders)

- field id — primary key
- field person_id — foreign key to person
- field menu_id — foreign key to menu
- field order_date — date (for example 2022-01-01) of person order

People's visit and people's order are different entities and don't contain any correlation between data. For example, a customer can be in a restaurant (just looking at the menu) and at the same time place an order in another restaurant by phone or mobile application. Or another case, just be at home and again make a call with order without any visits.

## Materials

Materials that contribute to the completion of the task:

- [Interactive SQL Simulator on Stepik](https://stepik.org/course/63054/syllabus)
- [Interactive course on SQL — SQL Academy](https://sql-academy.org/ru/guide)
- And Yandex Search 😊

