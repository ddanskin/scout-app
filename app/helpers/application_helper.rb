module ApplicationHelper
    def get_destination_list(current_user)
        ratings = DestinationRating.where(user_id: current_user.id).sort_by(rating)
        destinations = []
        ratings.each do |loc|
            destinations.push(Destination.find_by(id: loc.destination_id))
        end
        return destinations
    end

    def get_rating(destination, current_user)
        DestinationRating.find_by(destination_id: destination.id, user_id: current_user.id)
    end
end
