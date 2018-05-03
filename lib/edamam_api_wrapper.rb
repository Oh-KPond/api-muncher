require 'httparty'

class EdamamApiWrapper

  URL = "https://api.edamam.com/search"
  KEY = ENV["EDAMAM_KEY"]
  ID = ENV["EDAMAM_ID"]

  def self.list_recipes(query)
    response = HTTParty.get("#{URL}?app_id=#{ID}&app_key=#{KEY}&q=#{query}")

    # recipes_list = []
    #
    # if response["hits"]
    #   response["hits"].each do |recipe|
    #     recipes_list << Recipes.new(recipe["label"], recipe["id"])
    #   end
    # end
    # return recipes_list
return response
  end
end
