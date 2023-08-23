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

1 - There is no interface since the problem doesn't suggest to do one. But it could also be read by a framework as REACT. This could be a improvement as a future task.

2 - It's was done in Ruby on Rails, version 7.0.6, Ruby version 3.1.2.

3 - It follows REST principles as asked for. The gem Active Model Serializer was used with json_api adapter which complies with format specified in jsonapi.org/format.

4 - Rails by default uses Minitest. This challenge uses RSpec as the testing framework.

5 - For caching, I used built-in caching mechanisms provided by the Ruby on Rails. It could be done with Redis. For this challenge Rails caching might be sufficent because of its simplicity and basic caching needs.

6 - The DB is Postgresql.

INSTALLATION INSTRUCTIONS

1 - It was done with ruby 3.1.2. To install it on your machine, please look at this {tutorial}(https://www.ruby-lang.org/en/documentation/installation/).

2 - Clone the code to your preferred folder for this kind of project.

3 - I used Bundler to load TDD and debugger gems. Run bundle install. After it, you will have Rspec for TDD and Pry for the console.

4 - Once you have the enviroment prepared run bin/rails db:create db:migrate. To populate your development database do bin/rails dev:setup.

5 - You can see the json data from your browser once you have your server o. As it is an API app, it good to have tools to verify the data. I use Postman and Curl. I suggest you to do the same.

Usage instructions

1. An endpoint to return the movies, ordered by creation. (http://localhost:3000/movies)
2. An endpoint to return the seasons ordered by creation, including the list of episodes ordered by its number. (http://localhost:3000/seasons)
3. An endpoint to return a single list of movies and seasons, ordered by creation. (/list)
4. An endpoint for a user to perform a purchase of a content.
5. An endpoint to get the library of a user ordered by the remaining time to watch the content.The database file could be a simple .txt file. The decision to exemplify it in .csv is because companies like to use Excel tables.

Installation instructions



The project is simple to use. You just type the number of the option you want to perform and follow its instructions to add information.

To do

I would like to improve app flexibility. I made some comments about it but didn't run the idea. I will still work on it to improve it.
