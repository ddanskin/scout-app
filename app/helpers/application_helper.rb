module ApplicationHelper

    def get_cost_index(destination)
        DestinationCostIndex.find_by(destination_id: destination.id)
    end

    def get_rating(destination, current_user)
        DestinationRating.find_by(destination_id: destination.id, user_id: current_user.id)
    end

    def get_scout_index(cost_index, current_exchange_rate)
        exchange_rate_change = (cost_index.start_exchange_rate/current_exchange_rate).round(2)
        exchange_rate_change * ((cost_index.avg_mcmeal * 15) + (cost_index.avg_hotel * 5) + cost_index.avg_airfare)
    end

    def get_destination_list(current_user, rates)
        ratings = DestinationRating.where(user_id: current_user.id)
        destinations = []
        ratings.each do |loc|
            destinations.push(Destination.find_by(id: loc.destination_id))
        end
        return destinations
    end

    def sort_results(current_user, current_rates, destinations)
        sorted_destinations = []
        destinations.each do |destination|
            cost = get_cost_index(destination)
            rate = (current_rates["rates"][cost.currency]).round(2)
            scout_index = get_scout_index(cost, rate)
            user_rating = get_rating(destination, current_user)
            case user_rating.rating
            when 1
                sorted_destinations.push([destination, (scout_index * 1.10)])
            when 2
                sorted_destinations.push([destination, (scout_index * 1.05)])
            when 4
                sorted_destinations.push([destination, (scout_index * 0.95)])
            when 5
                sorted_destinations.push([destination, (scout_index * 0.90)])
            else
                sorted_destinations.push([destination, scout_index])
            end
        end
        sorted_destinations = sorted_destinations.sort { |a, b| a[1] <=> b[1] }
        results = []
        sorted_destinations.each do |destination|
            results.push(destination[0])
        end
        return results
    end

end
