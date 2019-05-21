class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.text :name
      t.string :indredients
      t.integer :dose

      t.timestamps
    end
  end
end
