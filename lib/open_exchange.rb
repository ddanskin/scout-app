# Required ruby gems:
require 'json'
require 'net/http'

class OpenExchangeApi

    def get_rates
        # Assign app ID and base currency:
        app_id = ENV['OPEN_EXCHANGE_KEY']
        base = "USD"

        # Build URI with your app ID and base currency:
        uri = URI("https://openexchangerates.org/api/latest.json?app_id=#{app_id}&base=#{base}")

        # =>  Submit get request with your URI and parse results as JSON:
        @rates = JSON.parse(Net::HTTP.get(uri))

        # rates is a hash where exchange rates can be accessed like so:
        # rates["rates"]["GBP"]
    end
end
