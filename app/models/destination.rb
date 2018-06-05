class Destination < ApplicationRecord
    has_many :destination_ratings, dependent: :destroy
    has_one :destination_cost_index, dependent: :destroy
end
