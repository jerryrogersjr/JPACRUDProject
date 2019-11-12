## JPA CRUD Project

### Overview

My JPA CRUD Project uses a simple database of Automobiles. From the
home page, you can can search by vehicle Id and retrieve a full list
of cars in the database. When you search by Id, you will be taken to
a page of the individual vehicle found with options search again,
edit, or delete the car of choice. When choosing to retrieve a full
list of vehicles from the home page, you will be able to obviously view
the list, but each vehicle is hyperlinked to its individual data. In
addition, from the vehicle list page you can add vehicles of choice.

### Topics Covered
* Creating a SQL database and subsequent tables.
* Configuring a JPA project.
* Mapping Entities to SQL tables.
* Creating JUnit tests to ensure our JPA mappings are correct.
* Integrating a Spring MVC project with a JPA project.
* Performing basic CRUD operations.
* Deploying an application to AWS

### Project Requirements

Project pushed to a Github repo named JPACRUDProject. README.md detailing the technologies used as well as the purpose of the application.

*Project utilizes a MySQL database to manipulate data. For this project, only required to have a single table and entity.

*The MySQL table is mapped to a valid JPA Entity and tested to ensure the mappings are working correctly.

*A Spring project allows for a user to perform basic CRUD operations on your entity via a web interface.

*Your project and database are deployed to your AWS instance.

### Technologies Used

* Java
* JPA
* Gradle
* Tomcat/Apache
* Spring Boot
* Bootstrap
* MySQL Workbench
* Atom
* AWS
* MacBook Pro
* Spotify :)


### Lessons Learned

This project started off fine. I was actually pretty comfortable with
most of this yet ran into a problem with Spring initially that took
some time to fix. Also, started my naming classes in plural with
variable names too close to the object names which I saw potential
confusion so I refactored the project and all it's naming. I still
could be better, but with practice. On the database side, I imported
a list of vehicles via CSV. The biggest challenge that I saw that could
be an issue in the future is matching up the data to the table. For example,
my database table has a column for the vehicle Id which I wanted to leave
blank on the database and allow it to auto increment. And I also wanted
the Id in the first position, which it is. However, for this project I
did end up hard coding some Id's and cutting my list down. This will not
be the preferred option in the future Just a learning
point. Overall, this project was actually a great learning tool in mapping.
