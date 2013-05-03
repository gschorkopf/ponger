class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :company
      t.integer :score, :default => 1500
      t.string :email

      t.timestamps
    end
  end
end
