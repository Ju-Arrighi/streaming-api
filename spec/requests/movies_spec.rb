require 'rails_helper'

RSpec.describe "Movies", type: :request do
  describe "endpoint /movies" do
    it 'get index and return 200 OK' do
      get movies_path
      expect(response).to have_http_status(200)
    end
    it 'GET /movies to show all movies' do
      movies = Movie.all
      get movies_path
      response_body = JSON.parse(response.body)
      expect(response_body.fetch('data')).to eq(movies)
      # binding.break
    end
    #  it 'GET /movies to contain data type movies' do
    #   movies = Movie.all
    #   get movies_path
    #   response_body = JSON.parse(response.body)
    #   expect(response_body.fetch('data').fetch('type')).to eq('movie')
    # end
  end
end
