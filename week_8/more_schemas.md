
## My One to One relationship

![Schema](https://github.com/brianbier/phase_0/blob/master/week_8/images/one_to_one_relationship.png "My Schema")

A One-to-One relationship means that you have two tables that have a relationship, but that relationship only exists in such a way that any given row from Table A can have at most one matching row in Table B. The schema above is a very simple explanation. A person in the table Person can have only one drivers license but they can also not have a drivers license. The drivers licenses table will hold a license for each person who has one and it will not create one for those who do not have one. A drivers license does not exist without a person. Also, when creating the child table drivers license it will not have its own unique id, you will have to assign it the persons table id as its foreign key.

## My Many to Many relationship
![Schema](https://github.com/brianbier/phase_0/blob/master/week_8/images/many_to_many_relationship.png "My Schema")


## Reflection

**What is a one-to-one database?**

A One-to-One relationship means that you have two tables that have a relationship, but that relationship only exists in such a way that any given row from Table A can have at most one or none  matching row in Table B. 

**When would you use a one-to-one database? (Think generally, not in terms of the example you created).**

I would use a one to one database when I am associating one particular item to another one particular item. Where one table needs the other table. 

**What is a many-to-many database?**

A many to many database is when I am associating two particular tables that have multiple relationships which each other. Which means any given row in Table A can have multiple matchings in Table B and vice versa. A many to many database requires a joining table in order to combine them together. A good example is a relationship between books and authors. A book can have multiple authors and an author can have multiple books.

**When would you use a many-to-many database? (Think generally, not in terms of the example you created).**

The many-to-many database relationship is used when you are in the situation where the rows in the first table can map to multiple rows in the second table… and those rows in the second table can also map to multiple (different) rows in the first table.

**What is confusing about database schemas? What makes sense?**

A confusion that I had with the database schema is with the many to many relationships. I wasn't sure what the column names should be because they can go to either side of the table but it all depends on how you want your table to display. Without having the ability to display my table and seeing how it looks it made it complicated to picture it.It made perfect sense when designing the one to many or the one to one relationship because it is easy to determine what will go in each table. 