class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :image
      t.string :title
      t.boolean :isFavorite
      t.timestamps
    end
  end
end
