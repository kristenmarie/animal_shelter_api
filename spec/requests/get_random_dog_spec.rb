require 'rails_helper'

describe 'get random dog route', type: :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20)}

  before do
    get '/api/v1/dogs/random'
  end

  it "returns random dog" do
    expect(JSON.parse(response.body)).to_not eq(nil)
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
