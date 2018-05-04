require 'test_helper'

describe Recipe do
  it "Cannot be initialized with less than 3 parameters" do
    proc {
      Recipe.new
    }.must_raise ArgumentError

    proc {
      Recipe.new "Title"
    }.must_raise ArgumentError

    proc {
      Recipe.new "Title", "ID"
    }.must_raise ArgumentError
  end

  it "Must initialize name & id properly" do
    recipe = Recipe.new("Title", "ID", "Image")
    recipe.title.must_equal "Title"
    recipe.id.must_equal "ID"
    recipe.img.must_equal "Image"
  end
end
