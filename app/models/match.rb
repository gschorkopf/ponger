class Match < ActiveRecord::Base
  attr_accessible :loser, :winner

  belongs_to :bracket
  belongs_to :winner, class_name: "Player"
  belongs_to :loser, class_name: "Player"
end
