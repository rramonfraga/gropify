require 'rails_helper'

RSpec.describe PetsController, type: :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the pets into @pets" do
      pet1 = Pet.create name: "Luigi", kind: "Dog", age: 3
      pet2 = Pet.create name: "Mario", kind: "Cat", age: 2
      get :index

      expect(assigns(:pets)).to match_array([pet1, pet2])
    end
  end
end
