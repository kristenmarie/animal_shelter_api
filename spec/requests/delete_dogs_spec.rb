require "rails_helper"

describe 'deleting a dog', type: :request do
  let!(:dog) { FactoryBot.create(:dog) }

  before do
    delete "/api/v1/dogs/#{dog.id}"
  end

  it "dog no longer exists in database" do
    expect(Dog.all).to eq([])
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
