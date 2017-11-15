class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :kind
      t.integer :current_rating
      t.string :purpose
      t.string :location
      t.string :age_range
      t.string :place_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
