# GloBox A/B Testing Project

## Programs and Process
The data was explored and analysed in SQL to get a full understanding of the dataset using various SQL queries, and the relevant data was then extracted and imported into Google Sheets for further analysis using extra calculations, thereafter the findings were visualized in Tableau where a further degree of analysis was performed, and these findings were then presented to the Stakeholders.

## Motivation
An A/B Test was performed for a fictional International eCommerce Marketplace called GloBox. primarily known for its boutique fashion items and high-end decor products, had recently seen tremendous growth in its food and drink offerings, the company wanted to bring awareness to this product category with the primary objective of increasing revenue. The analysis was performed to determine the effectiveness of a banner placed at the top of the GloBox website to highlight the increased offerings in the food and drink category. The two main metrics being assessed for the overall objective of increasing revenue were "Average Amount Spent per User” and “Conversion Rate”. The recommendations were provided to Stakeholders on whether to launch or not launch a new homepage.

## Table of Contents
1. Project Report
2. SQL Queries

## Dataset
SQL queries were run to explore, understand, and extract the data from the provided PostgreSQL relational database, with tables and fields as below. 

**users:** user demographic information
* id: the user ID
* country: ISO 3166 alpha-3 country code
* gender: the user's gender (M = male, F = female, O = other) 
- Note: there are missing genders (“n/a”)

**groups:** user A/B test group assignment
* uid: the user ID
* group: the user’s test group
* join_dt: the date the user joined the test (visited the page)
* device: the device the user visited the page on (I = iOS, A = Android)

**activity:** user purchase activity, containing 1 row per day that a user made a purchase
* uid: the user ID
* dt: date of purchase activity
* device: the device type the user purchased on (I = iOS, A = Android)
* spent: the purchase amount in USD


## Confidence Interval and Significance Level
* Confidence Intervals of 95%
* Significance Level 5%
