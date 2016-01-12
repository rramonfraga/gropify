class Pet < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :name, :kind, :age, presence: true
  validates :age, numericality: {only_integer: true}

  def self.last_created_pets_desc
    order('created_at DESC')
  end

end
