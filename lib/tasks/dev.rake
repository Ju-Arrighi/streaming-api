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
    100.times do |i|
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
    100.times do |i|
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

    # rand(5).times do |purchase|
    #     phone = contact.phones.create!(number: Faker::PhoneNumber.cell_phone)
    # puts 'Creating Purchase...'
    #   100.times do |i|
    #     Purchase.create!(
    #       product_type: rand(2),
    #       quality: rand(2),
    #       price: rand(2),
    #       status: rand(3),
    #       product_id: rand(1..100)
    #     )
    #   end
    #   puts 'Purchase created successfuly.'

    #   #################################
    # Season.all.each do |season|
    #   number_of_seasons = season.number
    #   number_of_episodes = number_of_seasons * rand(1..10)
    #   x = 0
    #   number_of_episodes.times do |i|
    #     episode = season.episodes.create!(
    #       title: Faker::TvShows::BreakingBad.character,
    #       plot: Faker::TvShows::BreakingBad.episode,
    #       season_ref: x += 1
    #      )
    #     season.episodes << episode
    #     season.save!
    #   end
    # end

  end
end
