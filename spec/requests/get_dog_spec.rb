require "rails_helper"

describe 'get dog by id route', type: :request do
  let!(:dog) { FactoryBot.create(:dog) }

  before do
    get "/api/v1/dogs/#{dog.id}"
  end

  it "returns dog with id" do
    dog_returned = JSON.parse(response.body)
    expect(dog_returned['name']).to eq(dog.name)
  end

  it "returns status code 200" do
    expect(response).to have_http_status(:success)
  end

end
