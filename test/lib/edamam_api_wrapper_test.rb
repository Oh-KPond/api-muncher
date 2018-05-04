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
end
