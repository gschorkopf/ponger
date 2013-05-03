class Player < ActiveRecord::Base
  attr_accessible :score, :name

  has_many :matches, foreign_key: [:winner_id, :loser_id]
end
