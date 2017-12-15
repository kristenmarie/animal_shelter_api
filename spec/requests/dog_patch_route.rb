require "rails_helper"

describe 'dog patch route', type: :request do
  let!(:dog) { FactoryBot.create(:dog) }

  before do
    patch "/api/v1/dogs/#{dog.id}", params: { name: "Gandalf" }
  end

  it "updates dogs name" do
    expect(Cat.find(dog.id).name).to eq('Gimli')
  end

  it "returns status 200" do
    expect(response).to have_http_status(:success)
  end
end
