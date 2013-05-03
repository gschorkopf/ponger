class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :winner
      t.references :loser
      t.references :bracket

      t.timestamps
    end
  end
end
