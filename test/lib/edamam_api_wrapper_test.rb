require 'test_helper'

describe EdamamApiWrapper do
  it "can send a valid query to api" do
    query = "soup"

    VCR.use_cassette("results") do
      response = EdamamApiWrapper.list_recipes(query)

      response.must_be_kind_of Array
      response.first.must_be_kind_of Recipe
    end
  end

  it "can retreve information about a recipe" do
    id = "7543ecfa28b7506a97360748f017a83e"

    VCR.use_cassette("results") do
      response = EdamamApiWrapper.show_recipe(id)
      
      response.must_be_kind_of Recipe
    end
  end
end
