class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :image
      t.string :title
      t.boolean :isFavorite
      t.integer :start_date
      t.integer :end_date
    end
  end
end
