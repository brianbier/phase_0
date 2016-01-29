
## My One to One relationship

![Schema](https://github.com/brianbier/phase_0/blob/master/week_8/images/one_to_one_relationship.png "My Schema")

A One-to-One relationship means that you have two tables that have a relationship, but that relationship only exists in such a way that any given row from Table A can have at most one matching row in Table B. The schema above is a very simple explanation. A person in the table Person can have only one drivers license but they can also not have a drivers license. The drivers licenses table will hold a license for each person who has one and it will not create one for those who do not have one. A drivers license does not exist without a person. Also, when creating the child table drivers license it will not have its own unique id, you will have to assign it the persons table id as its foreign key.

## My Many to Many relationship
![Schema](https://github.com/brianbier/phase_0/blob/master/week_8/images/many_to_many_relationship.png "My Schema")
