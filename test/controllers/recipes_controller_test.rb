require "test_helper"

describe RecipesController do
  it "should get root" do
    VCR.use_cassette("root") do

      get root_path
      must_respond_with :success
    end
  end

  it "should get index" do
    VCR.use_cassette("index") do

      get recipes_path, params: {query: "chicken"}
      must_respond_with :success
    end
  end

  it "should get show" do
    VCR.use_cassette("show") do

      get recipe_path ("7543ecfa28b7506a97360748f017a83e")
      must_respond_with :success
    end
  end

  it "can get the new search form" do
    VCR.use_cassette("new") do

      get new_recipe_path
      must_respond_with :success
    end
  end

  it "can send a new search" do
    VCR.use_cassette("create") do

      get recipes_path, params: {query: "chicken"}
      must_redirect_to recipes_path
    end
  end
end
