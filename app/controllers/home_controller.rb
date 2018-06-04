class HomeController < ApplicationController
    before_action :authenticate_user!, :except => [:index]
    protect_from_forgery with: :exception

    def index
    end

    def dashboard
        @destinations = get_destination_list(current_user)
    end

    private

    def get_destination_list(current_user)
        ratings = DestinationRating.where(user_id: current_user.id)
        ratings = ratings.sort{ |a,b| b.rating <=> a.rating }
        destinations = []
        ratings.each do |loc|
            destinations.push(Destination.find_by(id: loc.destination_id))
        end
        return destinations
    end

end
