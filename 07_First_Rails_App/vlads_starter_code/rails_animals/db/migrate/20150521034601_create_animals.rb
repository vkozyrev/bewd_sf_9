class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.string :breed
      t.integer :age
      t.boolean :available

      t.timestamps null: false
    end
  end
end
