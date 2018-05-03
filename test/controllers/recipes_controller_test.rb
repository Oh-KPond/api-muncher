require "test_helper"

describe RecipesController do

  describe "#root" do
    it "should get root" do
      VCR.use_cassette("root") do

        get root_path
        must_respond_with :success
      end
    end
  end

  describe "#index" do

    it "succeeds when there are recipes" do
      VCR.use_cassette("index") do

        get recipes_path "chicken"
        must_respond_with :success
      end
    end

    it "succeeds when there are recipes" do
      VCR.use_cassette("index") do

        get recipes_path
        must_respond_with :success
      end
    end
  end

  describe "#show" do
    it "should get show" do
      VCR.use_cassette("show") do

        get recipe_path ("PLACEHOLDER")
        must_respond_with :success
      end
    end
  end

  describe "#new" do
    it "can get the new search form" do
      VCR.use_cassette("new") do

        get new_recipe_path
        must_respond_with :success
      end
    end
  end

  describe "#create" do
    it "can send a new search" do
      VCR.use_cassette("create") do
        query = "chicken"

        get recipes_path(query)
        must_respond_with :redirect
        must_redirect_to recipes_path
      end
    end

    it "raises an error if query is not valid" do
      VCR.use_cassette("create") do

        get recipes_path(nil)
        flash[:alert].must_equal "Error inquiring"
      end
    end
  end

end
