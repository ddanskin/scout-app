class Destination < ApplicationRecord
    has_many :destination_ratings, dependent: :destroy
end
