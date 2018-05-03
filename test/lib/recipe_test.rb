require 'test_helper'

describe Recipe do
  it "Cannot be initialized with less than 2 parameters" do
    proc {
      Recipe.new
    }.must_raise ArgumentError

    proc {
      Recipe.new "Title"
    }.must_raise ArgumentError
  end

  it "Must initialize name & id properly" do
    recipe = Recipe.new("Title", "ID")
    recipe.title.must_equal "Title"
    recipe.id.must_equal "ID"
  end
end
