class CreateDestinationRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_ratings do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :rating

      t.timestamps
    end
  end
end
