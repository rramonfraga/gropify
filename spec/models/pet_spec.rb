require 'rails_helper'

RSpec.describe Pet, type: :model do

  describe 'last_created_pets_desc' do
    it "returns all the pets order by desc" do
      pet1 = Pet.create name: "Luigi", kind: "Dog", age: 3
      pet2 = Pet.create name: "Mario", kind: "Cat", age: 2
      expect(Pet.last_created_pets_desc).to eq([pet2, pet1])
    end
    
  end
end
