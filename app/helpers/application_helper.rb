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

    def scout_index()
        true_cost = {}
        destination_list = DestinationCostIndex.all
        destination_list.each do |destination|
            cost = destination.avg_mcmeal + destination.avg_hotel + destination.avg_airfare
            true_cost[destination.id] = cost
        end
        return true_cost
    end

    def get_currency(destination)
        DestinationCostIndex.find_by(destination_id: destination.id).currency
    end
end
