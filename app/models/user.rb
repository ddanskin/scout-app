class User < ApplicationRecord
    has_many :destination_ratings, dependent: :destroy
    accepts_nested_attributes_for :destination_ratings
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
