**1. Select all data from States**

⋅⋅⋅SELECT * FROM states;

**2. Select all data from regions**

SELECT * FROM regions;

**3. Select the state_name and population for all states.**

SELECT state_name, population FROM states;

**4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.**

SELECT state_name, population FROM states ORDER BY population DESC;

**5. Select the state_name for the states in region 7.**

SELECT state_name FROM states WHERE region_id = 7;

**6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.**

SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

**7. Select the state_name for states with a population between 1 million and 1.5 million people.**

SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

**8. Select the state_name and region_id for states ordered by region in ascending order.**

SELECT state_name,region_id FROM states ORDER BY region_id ASC;


**9. Select the region_name for the regions with "Central" in the name.**
 
SELECT region_name FROM regions WHERE region_name LIKE '%central%';


**10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).**

SELECT region_name,state_name FROM states,regions ORDER BY region_id ASC;

RELEASE 6: MY OWN SCHEMA

picture


RELEASE 7: REFLECTION

What are databases for?

Databases are used in order to keep a well-organized set of tables that store storing specific information. Having databases gives you the ability to easily access, manage, and update information. 

What is a one-to-many relationship?

In relational databases, a one-to-many relationship occurs when a parent record in one table can potentially reference several child records in another table. For example, a person can have multiple outfits and the outfit belongs to only one person.

What is a primary key? What is a foreign key? How can you determine which is which?

A table cannot contain duplicate rows because that would create ambiguities when retrieving information. In order to prevent this, you must have one column inside a table called primary key, that uniquely identifies every record of the table  A foreign key is inside a child table which is considered the primary key of a parent table. IT is mainly used to reference the parent table. For Example, the outfits table has a foreign key of the person table in order to reference the person table. You will determine the difference because it will show the id name of the parent table with an underscore and the name of the table.


How can you select information out of a SQL database? What are some general guidelines for that?

To Select information out of SQL database, you have to use its declarative statements. This will help keep the data accurate and secure. Below is a syntax that you can use to get all information out of a specific table. The general rule is to capitalize the entire SQL statements because it is best practice. You are allowed to write them in lower case but it is not recommended. Using the SELECT statement combined with other functions will always generate information.

SELECT * FROM table_name;
