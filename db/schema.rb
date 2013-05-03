ActiveRecord::Schema.define(:version => 20130503201905) do

  create_table "matches", :force => true do |t|
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
