class AddImageToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :image_url, :string
  end
end
