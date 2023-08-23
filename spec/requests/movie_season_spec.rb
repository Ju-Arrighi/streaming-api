require 'rails_helper'

RSpec.describe "Movies and Seasons", type: :request do
  describe "endpoint /movie_season" do
    it 'get index and return 200 OK' do
      get movie_season_index_path
      expect(response).to have_http_status(200)
    end
  end
end
