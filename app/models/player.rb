class Player < ActiveRecord::Base
  attr_accessible :name, :score

  has_many :wins, class_name: 'Match', foreign_key: 'winner_id'
  has_many :losses, class_name: 'Match', foreign_key: 'loser_id'

  def matches
    wins + losses
  end
end
