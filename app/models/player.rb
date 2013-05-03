class Player < ActiveRecord::Base
  attr_accessible :company, :email, :name, :score

  has_many :matches
end
