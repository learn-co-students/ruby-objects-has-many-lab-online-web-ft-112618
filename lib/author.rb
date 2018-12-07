class Author  
  attr_accessor :name, :posts
  
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(posts)
    @@all << posts
    @posts << posts
    posts.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@all << new_post
  end
  
  def self.post_count
    Post.all.count 
  end
  
end