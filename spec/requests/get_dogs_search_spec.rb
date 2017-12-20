require 'rails_helper'

describe 'get dog from search route', type: :request do
  let!(:dogs) { FactoryBot.create_list(:dog, 20) }
  let!(:test_dog) { FactoryBot.create(:dog, breed: 'Malamute')}

  before do
    get "/api/v1/cats?breed=#{dogs.first.breed}"
  end

  it "returns malamute dogs" do
    dog_returned = JSON.parse(response.body)
    expect(dog_returned[0]['breed']).to eq(test_dog.breed)
  end

  before do
    get "/api/v1/dogs?breed=Malamute"
  end

  it 'returns malamute dogs' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
