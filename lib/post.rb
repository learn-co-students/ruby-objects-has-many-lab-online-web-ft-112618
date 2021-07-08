class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(text ="")
    @title = text
    instance = self
    @@all << instance
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      @author.name
    end
  end
end
