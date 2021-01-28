require 'pry'
require 'json'
require 'rest-client'

@beer_response = JSON.parse(RestClient.get('https://api.punkapi.com/v2/beers?beer_name=ipa'))

# @final_result = JSON.parse([@beer_response])
# binding.pry
Beer.destroy_all

@beer_response.each do |beer|
    Beer.create(
        name:beer['name'] , 
        tagline: beer['tagline'] , 
        first_brewed: beer['first_brewed'], 
        description: beer['description'] , 
        image: beer['image_url'], 
        alcoholLv: beer['abv'],
        food_pairing: beer['food_pairing'])
end
