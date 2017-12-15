require "rails_helper"

describe 'get cat by id route', type: :request do
  let!(:cat) { FactoryBot.create(:cat) }

  before do
    get "/api/v1/cats/#{cat.id}"
  end

  it "returns cat with id" do
    cat_returned = JSON.parse(response.body)
    expect(cat_returned['name']).to eq(cat.name)
  end

  it "returns status code 200" do
    expect(response).to have_http_status(:success)
  end

end
