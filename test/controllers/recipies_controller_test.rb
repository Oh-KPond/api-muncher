require "test_helper"

describe RecipiesController do
  it "should get root" do
    get recipies_root_url
    value(response).must_be :success?
  end

  it "should get index" do
    get recipies_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get recipies_show_url
    value(response).must_be :success?
  end

end
