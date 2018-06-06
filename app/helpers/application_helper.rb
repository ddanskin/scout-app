module ApplicationHelper
    def get_destination_list(current_user)
        ratings = DestinationRating.where(user_id: current_user.id).sort_by(rating)
        destinations = []
        ratings.each do |loc|
            destinations.push(Destination.find_by(id: loc.destination_id))
        end
        return destinations
    end

    def get_cost_index(destination)
        DestinationCostIndex.find_by(destination_id: destination.id)
    end

    def get_rating(destination, current_user)
        DestinationRating.find_by(destination_id: destination.id, user_id: current_user.id)
    end

    def get_scout_index(cost_index)
        cost_index.avg_mcmeal + cost_index.avg_hotel + cost_index.avg_airfare
    end

end
