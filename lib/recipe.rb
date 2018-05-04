class Recipe
  attr_reader :title, :id, :img

  def initialize(title, id, img)
    @title = title
    @img = img
    @id = id
  end
end
