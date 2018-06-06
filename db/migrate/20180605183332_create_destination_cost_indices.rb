class CreateDestinationCostIndices < ActiveRecord::Migration[5.2]
    def change
        create_table :destination_cost_indices do |t|
            t.decimal :avg_mcmeal, default: 0
            t.decimal :avg_airfare, default: 0
            t.decimal :avg_hotel, default: 0
            t.decimal :start_exchange_rate, default: 0
            t.text :currency
            t.references :destination, foreign_key: true

            t.timestamps
        end
    end
end
