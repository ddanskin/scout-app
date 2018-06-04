class CreateDestinationRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :destination_ratings do |t|
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
