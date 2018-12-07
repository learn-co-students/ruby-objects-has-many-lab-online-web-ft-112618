class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def title
    @title
  end
  
  def author_name
    self.author.nil? ? self.author : self.author.name
  end
  
end