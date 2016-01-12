class PetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @pets = Pet.last_created_pets_desc
  end
end
