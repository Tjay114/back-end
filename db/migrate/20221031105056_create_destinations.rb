class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :city
      t.string :country
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
