require "rails_helper"

describe 'deleting a cat', type: :request do
  let!(:cat) { FactoryBot.create(:cat) }

  before do
    delete "/api/v1/cats/#{cat.id}"
  end

  it "cat no longer exists in database" do
    expect(Cat.all).to eq([])
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
