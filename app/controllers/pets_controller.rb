class PetsController < ApplicationController

  def index
    @pets = Pet.last_created_pets_desc
  end
end
