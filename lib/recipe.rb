class Recipe
  attr_reader :title, :id

  def initialize(title, id)
    @title = title
    @id = id
  end
end
