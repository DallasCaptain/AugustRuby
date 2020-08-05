class CreatePizzaToppings < ActiveRecord::Migration
  def change
    create_table :pizza_toppings do |t|
      t.references :pizza, index: true, foreign_key: true
      t.references :topping, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
