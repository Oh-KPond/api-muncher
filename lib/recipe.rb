class Recipe
  attr_reader :title, :id, :img, :ingredients, :source, :labels

  def initialize(title, id, img, options = {})
    @title = title
    @img = img
    @id = id.split("_").last

    @ingredients = options[:ingredients]
    @source = options[:source]
    @labels = options[:labels]
  end
end
