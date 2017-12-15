require 'rails_helper'

describe 'get cats from search route', type: :request do
  let!(:cats) { FactoryBot.create_list(:cat, 20) }
  let!(:test_cat) { FactoryBot.create(:cat, breed: 'Ragdoll')}

  before do
    get "/api/v1/cats?breed=Ragdoll"
  end

  it 'returns ragdoll cats' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
