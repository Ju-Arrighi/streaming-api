require 'faker'

namespace :dev do
  desc 'Configure development setup'
  task setup: :environment do

    puts 'Creating Movies...'
    100.times do |i|
      Movie.create!(
        title: Faker::Movie.title,
        plot: Faker::Movie.quote
      )
    end
    puts 'Movies created successfuly.'

    ##################################

    puts 'Creating Seasons...'
    50.times do |i|
      Season.create!(
        title: Faker::TvShows::Simpsons.quote,
        plot: Faker::TvShows::Simpsons.character,
        number: rand(1..5)
      )
    end
    puts 'Seasons created successfuly.'

    ##################################

    puts 'Creating Episodes...'
    Season.all.each do |season|
      number_of_seasons = season.number
      number_of_episodes = number_of_seasons * rand(1..10)
      x = 0
      number_of_episodes.times do |i|
        episode = season.episodes.create!(
          title: Faker::TvShows::BreakingBad.character,
          plot: Faker::TvShows::BreakingBad.episode,
          season_ref: x += 1
         )
        season.episodes << episode
        season.save!
      end
    end
    puts 'Episodes created successfully.'

    ###################################
    puts 'Creating Users...'
    50.times do |i|
      User.create!(
        email: Faker::Internet.email
      )
    end
    puts 'Users created successfuly.'

    ################################## User e Library e depois purchase!!!!

    puts 'Creating Library...'
    User.all.each do |user|
      Library.create!(
        user_id: user.id
      )
    end
    puts 'Library created successfuly.'

    #####################################
    puts 'Creating Purchase...'
    Library.all.each do |library|
      qualities = %w[HD SD]
      rand(3).times do
        # binding.break
        purchase = library.purchases.create!(
          product_type: rand(2),
          quality: qualities.sample,
          price: rand(2),
          status: rand(3),
          product_id: rand(1..100)
        )
        library.purchases << purchase
        library.save!
      end
    end
    puts 'Purchase created successfuly.'
  end
end
