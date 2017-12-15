require 'rails_helper'

describe 'get random cat route', type: :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before do
    get '/api/v1/cats/random'
  end

  it "returns random cat" do
    expect(JSON.parse(response.body)).to_not eq(nil)
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
