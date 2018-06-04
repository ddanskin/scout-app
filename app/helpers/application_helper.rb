module ApplicationHelper
    def get_destination_list(current_user)
        ratings = DestinationRating.find_by(user_id: current_user.id).sort_by(rating)
        destinations = []
        ratings.each do |loc|
            destination.push(Destination.find_by(id: loc.destination_id))
        end
        return destinations
    end
end
