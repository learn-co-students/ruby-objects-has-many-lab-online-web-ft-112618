class Author
  attr_accessor :posts
  attr_reader :name
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    self.class.all << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(title)    
    self.add_post(Post.new(title))
  end
  
  def self.all
    @@authors
  end

  def self.post_count
    self.all.reduce(0) { |count, author| count + author.posts.length }
  end
end
