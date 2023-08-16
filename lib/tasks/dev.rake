require 'faker'

namespace :dev do
  desc 'Configure development setup'
  task setup: :environment do
    puts 'Creating Movies'
    100.times do |i|
      Movie.create!(
        title: Faker::Movie.title,
        plot: Faker::Movie.quote
      )
    end
    puts 'Movies created successfuly'
    ##################################
    puts 'Creating Seasons'
    def episode_create
      Random.rand(10).times do |i|
        Episode.create!(
          title: Faker::TvShows::BreakingBad.character,
          plot: Faker::TvShows::BreakingBad.episode
        )
      end

    end
    Season.create!(
      title: Faker::TvShows::Simpsons.quote,
      plot: Faker::TvShows::Simpsons.character,
      episode: episode_create
    )
  end
  puts 'Seasons created successfuly'
  ##################################
  # puts 'Creating Episodes'
  # Season.all.each do |season|
  #   number_of_episodes = Random.rand(10)
  #   number_of_episodes.times do |i|
  #     Episode.create!(
  #       title: Faker::TvShows::BreakingBad.character,
  #       plot: Faker::TvShows::BreakingBad.episode
  #     )
  #   end
  # end
  # puts 'Episodes created successfuly'
end
