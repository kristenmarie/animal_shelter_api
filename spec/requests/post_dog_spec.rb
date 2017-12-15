require 'rails_helper'

describe 'post a dog route', :type => :request do

  before do
    post '/api/v1/dogs', params: {
      :name => 'test_name',
      :breed => 'test_breed',
      :age => 5,
      :gender => 'test_gender',
      :bio => 'test_bio'
     }
  end

  it 'returns the dogs name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the dogs breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns the dogs age' do
    expect(JSON.parse(response.body)['age']).to eq(5)
  end

  it 'returns the dogs gender' do
    expect(JSON.parse(response.body)['gender']).to eq('test_gender')
  end

  it 'returns the dogs bio' do
    expect(JSON.parse(response.body)['bio']).to eq('test_bio')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
