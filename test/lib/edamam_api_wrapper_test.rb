require 'test_helper'

describe EdamamApiWrapper do
  it "Can send valid query to api" do
    query = "soup"

    VCR.use_cassette("results") do
      response = EdamamApiWrapper.list_recipes(query)
      binding.pry
      response["q"].must_equal query
    end
  end
end
