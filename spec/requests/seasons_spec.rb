require 'rails_helper'

RSpec.describe "Seasons", type: :request do
  describe "endpoint /seasons" do
    it 'get index and return 200 OK' do
      get seasons_path
      expect(response).to have_http_status(200)
    end
    it 'GET /seasons to show all seasons' do
      seasons = Season.all
      get seasons_path
      response_body = JSON.parse(response.body)
      expect(response_body.fetch('data')).to eq(seasons)
    end
    #  it 'GET /seasons to contain data type seasons' do
    #   seasons = Season.all
    #   get seasons_path
    #   response_body = JSON.parse(response.body)
    #   expect(response_body.fetch('data').fetch('type')).to eq('season')
    # end
  end
end
