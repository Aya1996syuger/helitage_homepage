class CreateHelitages < ActiveRecord::Migration[5.2]
  def change
    create_table :helitages do |t|
      t.string :image_id
      t.integer :genre_id
      t.integer :country_id
      t.string :name
      t.string :address
      t.float :latitude
      t.float:longitude
      t.string :point
      t.string :body
      t.time :start_time
      t.time :finish_time
      t.string :price
      t.timestamps
    end
  end
end
