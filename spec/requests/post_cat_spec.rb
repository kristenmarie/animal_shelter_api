require 'rails_helper'

describe 'post a cat route', :type => :request do

  before do
    post '/api/v1/cats', params: {
      :name => 'test_name',
      :breed => 'test_breed',
      :age => 5,
      :gender => 'test_gender',
      :bio => 'test_bio'
     }
  end

  it 'returns the cats name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the cats breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns the cats age' do
    expect(JSON.parse(response.body)['age']).to eq(5)
  end

  it 'returns the cats gender' do
    expect(JSON.parse(response.body)['gender']).to eq('test_gender')
  end

  it 'returns the cats bio' do
    expect(JSON.parse(response.body)['bio']).to eq('test_bio')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
