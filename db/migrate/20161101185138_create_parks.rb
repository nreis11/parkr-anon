class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.text :description
      t.references :city

      t.timestamps
    end
  end
end
