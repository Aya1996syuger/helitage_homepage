class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :image_id
      t.integer :genre_id
      t.integer :country_id
      t.string :name
      t.string :address
      t.string :point
      t.string :body
      t.text :url

      t.timestamps
    end
  end
end
