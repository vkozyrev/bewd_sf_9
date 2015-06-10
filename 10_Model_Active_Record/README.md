
![GeneralAssemb.ly](../assets/ICL_icons/instr_agenda.png)

##Lesson 9: Models & Active Record

###Learning Objectives


- Describe a models function in the MVC framework.
- Define Rails migration and apply `rake db:migrate`
- Implement migrations to update database tables.
- Operate ActiveRecord to save and access model data.


###Schedule


| Time | Topic | GA ICLS | Comments |
******

| 20 min | Review | Quiz | Students create the controller and index view for the movie app|

| 30 min | Models | Code Demo  | Add a model |

| 30 min | Migrations | Code Along | Update table with a migration|

| 90 min | Lab Time | | Students work on schema design and kick start the build out of the movie_app|

*******

###Homework

* Please check the [movie_app_part_1] within the starter_code folder.
* Create a movie model with `title`, `description` and `year_released` attributes
* Integrate the following functionality into the movie_app:
  - User should have the ability to create a new movie (e.g. `localhost:3000/movies/new`)
  -	User should have the ability to edit and update an existing movie (e.g. `localhost:3000/movies/1/edit`)
  - User should have the ability to view all movies via the index (e.g. `localhost:3000/movies`)

* Read ActiveRecord Basics & ActiveRecord Migration (links are provided in the resources section)

###Resources

* [Rails Guides - ActiveRecord Migrations](http://edgeguides.rubyonrails.org/active_record_migrations.html)
* [Rails Guides - ActiveRecord Basics](http://edgeguides.rubyonrails.org/active_record_basics.html)
