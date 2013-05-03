class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :players
      t.references :bracket

      t.timestamps
    end
  end
end
