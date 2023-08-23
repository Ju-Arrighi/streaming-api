require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "endpoint /users" do
    it 'get index and return 200 OK' do
      get users_path
      expect(response).to have_http_status(200)
    end
    # it 'get /users/id and return 200 OK' do
    #   get users_path
    #   expect(response).to have_http_status(200)
    # end
  end
end
