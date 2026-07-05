class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :home_location
      t.string :category
      t.text :aliases
      t.boolean :active

      t.timestamps
    end
  end
end
