require 'httparty'

class EdamamApiWrapper

  URL = "https://api.edamam.com/search"
  KEY = ENV["EDAMAM_KEY"]
  ID = ENV["EDAMAM_ID"]

  def self.list_recipes(query)
    response = HTTParty.get("#{URL}?app_id=#{ID}&app_key=#{KEY}&q=#{query}&from=0&to=100")

    recipes_list = []

    if response["hits"]
      response["hits"].each do |hit|
      recipes_list << Recipe.new(hit["recipe"]["label"], hit["recipe"]["uri"], hit["recipe"]["image"])
      end
    end

    return recipes_list
  end
end
