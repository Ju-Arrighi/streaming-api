# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Streaming API Technical Challenge

This is an API application challenge. Some highlights about the code:

1 - There is no interface since the problem doesn't suggest to do one. But it could also be read be a framework as REACT. This could be a improvement as a future task.

2 - It's was done in Ruby on Rails, version 7.0.6, Ruby version 3.1.2.

3 - MVC It follows MVC principles as asked for. But it could be done by meeting another design pattern since it just needs to output a math function.

4 - The DB is the Postgresql. For caching I used Redis.

5 - Rails by default uses Minitest. This challenge uses RSpec for as the testing framework.

6 - The important tasks to be achieved are:
1. An endpoint to return the movies, ordered by creation. (/movies)
2. An endpoint to return the seasons ordered by creation, including the list of episodes ordered by its number. (/seasons) 
3. An endpoint to return a single list of movies and seasons, ordered by creation. (/list) 
4. An endpoint for a user to perform a purchase of a content. 
5. An endpoint to get the library of a user ordered by the remaining time to watch the content.The database file could be a simple .txt file. The decision to exemplify it in .csv is because companies like to use Excel tables.

Installation instructions

1 - It was done with ruby 3.1.2. To install it on your machine, please look at this {tutorial}(https://www.ruby-lang.org/en/documentation/installation/).

2 - Clone the code to your preferred folder for this kind of project.

3 - I used Bundler to load TDD and debugger gems. I suggest you do the same. If you don't have it, go to your projects folder and run . After it, you can run , and you will have Rspec for TDD and Pry-byebug for debugging.

4 - Finally, inside the projects folder, you can run the app in your terminal <ruby lib/app.rb /> to initialize it.

Usage instructions

The project is simple to use. You just type the number of the option you want to perform and follow its instructions to add information.

To do

I would like to improve app flexibility. I made some comments about it but didn't run the idea. I will still work on it to improve it.