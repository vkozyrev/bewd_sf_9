class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.boolean :available
      t.string :breed
      t.integer :age

      t.timestamps null: false
    end
  end
end
