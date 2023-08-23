require 'rails_helper'

RSpec.describe "Purchases", type: :request do
  describe "endpoint /purchases" do
    it 'get index and return 200 OK' do
      get purchases_path
      expect(response).to have_http_status(200)
    end

    # it 'GET library/id:/purchases to show all purchases' do
    #   get '/libraries/3/purchases.json'
    #   response_body = JSON.parse(response.body)
    #   expect(response_body.fetch('data').fetch('type')).to eq('purchases')
    # end

    # it '/libraries/:id/purchases to have right attributes' do
    #   # library = create(:library)
    #   get "/libraries/#{library[:id]}/purchases"
    #   expect(response.body).to include_json([
    #     id: /\d/,
    #     quality: (be_a_kind_of String),
    #     status: (be_a_kind_of String),
    #     product_id: (be_a_kind of Integer)
    #   ])
    # end
  end
end
