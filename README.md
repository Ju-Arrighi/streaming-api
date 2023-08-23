# README

# Streaming API Technical Challenge

This is an API application challenge. Some highlights about the code:

* There is no interface since the problem doesn't suggest to do one. But it could also be read by a frontend framework. This could be a improvement as a future task.

* It's was done in Ruby on Rails, version 7.0.6, Ruby version 3.1.2.

* It follows REST principles as asked for. The gem Active Model Serializer was used with json_api adapter which complies with format specified in jsonapi.org/format.

* Rails by default uses Minitest. This challenge uses RSpec as the testing framework.

* For caching, I used built-in caching mechanisms provided by the Ruby on Rails. It could be done with Redis. For this challenge Rails caching might be sufficent because of its simplicity and basic caching needs.

* The DB is Postgresql. And its schema is represented by the image bellow:

<img width="1124" alt="Screenshot 2023-08-23 at 14 31 32" src="https://github.com/Ju-Arrighi/streaming-api/assets/85900332/46a99e36-5802-4de8-9f78-d73fab191d33">


INSTALLATION INSTRUCTIONS

1 - It was done with ruby 3.1.2. To install it on your machine, please look at this {tutorial}(https://www.ruby-lang.org/en/documentation/installation/).

2 - Clone the code to your preferred folder for this kind of project.

3 - I used Bundler to load TDD and debugger gems. Run bundle install. After it, you will have Rspec for TDD and Pry for the console.

4 - Once you have the enviroment prepared run *bin/rails db:create db:migrate*. To populate your database do *bin/rails dev:setup*.

5 - You can see the json data from your browser once you have your server o. As it is an API app, it good to have tools to verify the data. I use Postman and Curl. I suggest you to do the same.

USAGE INSTRUCTIONS

1. An endpoint to return the movies, ordered by creation. (http://localhost:3000/movies)
2. An endpoint to return the seasons ordered by creation, including the list of episodes ordered by its number. (http://localhost:3000/seasons)
3. An endpoint to return a single list of movies and seasons, ordered by creation. (http://localhost:3000/movie_season)
4. An endpoint for a user to perform a purchase of a content. (http://localhost:3000/libraries/3/purchases)
5. An endpoint to get the library of a user ordered by the remaining time to watch the content. (http://localhost:3000/users or http://localhost:3000/libraries/:id/purchases)
