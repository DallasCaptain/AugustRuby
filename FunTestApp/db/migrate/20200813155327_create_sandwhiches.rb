class CreateSandwhiches < ActiveRecord::Migration
  def change
    create_table :sandwhiches do |t|
      t.string :bread
      t.string :cheese
      t.string :meat

      t.timestamps null: false
    end
  end
end
