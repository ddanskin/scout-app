class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :airport_code
      t.string :guide

      t.timestamps
    end
  end
end
