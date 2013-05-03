class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.text :email
      t.text :company
      t.integer :score

      t.timestamps
    end
  end
end
