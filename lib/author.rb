class Author
  attr_accessor :posts, :name

  @@authors = []

  def initialize(name)
    @posts = []
    @name = name
    @@authors << self
  end

  def add_post(post)
    @posts << post
    @posts[-1].author = self
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    add_post(post)
  end

  def self.post_count
    @@authors.inject(0) {|acc, n| acc + n.posts.size}
  end


end
