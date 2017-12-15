require 'rails_helper'

describe 'get all cats route', :type => :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20)}

  before { get '/api/v1/cats' }

  it 'returns all destinations' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
