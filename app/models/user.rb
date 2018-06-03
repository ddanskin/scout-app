class User < ApplicationRecord
    has_one :destination_rating
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
