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
    100.times do |i|
      Season.create!(
        title: Faker::TvShows::Simpsons.quote,
        plot: Faker::TvShows::Simpsons.character
        # episodes_id: episodes_ids
      )
    end
    puts 'Seasons created successfuly'
    def create_episodes
      episodes = []
      Random.rand(10).times do |episode|
        episode = Episode.create!(
          title: Faker::TvShows::BreakingBad.character,
          plot: Faker::TvShows::BreakingBad.episode
        )
        # season.episode << episode
        # season.save
        episodes << episode
      end
      episodes
    end
    def episodes_ids
      ids = []
      create_episodes.each do |episode|
        ids << episode.id
      end
      ids
      # binding.break
    end
  end
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
