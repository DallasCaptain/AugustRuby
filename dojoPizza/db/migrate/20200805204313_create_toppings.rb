class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.integer :price
      

      t.timestamps null: false
    end
  end
end
