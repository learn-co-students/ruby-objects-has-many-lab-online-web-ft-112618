class Author
  attr_accessor :name

  @@totalPosts = []

  def initialize(name = "")
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@totalPosts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@totalPosts << post
  end

  def self.post_count
    @@totalPosts.length
  end

end
