class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :score, :default => 1500
      t.timestamps
    end
  end
end
