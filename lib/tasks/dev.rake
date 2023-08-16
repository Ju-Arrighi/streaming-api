namespace :dev do
  desc "Configure development setup"
  task setup: :environment do
  puts 'Creating Movies'
    100.times do |i|
      Movie.create!(
        title: Faker::Movie.title,
        plot: Faker::Movie.quote
      )
    end
    puts 'Movies created successfuly'
  end
end
