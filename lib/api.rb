require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'

require_relative 'pokemon'

class Api 

    
    url = URI("https://pokemon-go1.p.rapidapi.com/pokemon_stats.json")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = 'e734edbea6mshe5d780847f3d164p1215f1jsna1ddee56c6b1'
    request["x-rapidapi-host"] = 'pokemon-go1.p.rapidapi.com'
    
    response = http.request(request)
    results_array = JSON.parse(response.body, symbolize_names: true)
    # puts response.read_body

    def self.load_pokemon(results_array)
        results_array.each do |pokemon|
            pokemon = Pokemon.new
            pokemon
        end
    end 
    # results_hash[0][:pokemon_id]
    

end
binding.pry