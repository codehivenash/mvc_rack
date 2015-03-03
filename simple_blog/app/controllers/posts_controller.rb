class PostsController < Simplemvc::Controller
  def new
    @post = Post.new
  end
  
  def create
    post_params = params["post"]
    @post = Post.new
    @post.title = post_params["title"]
    @post.body = post_params["title"]
    @post.created_at = Time.now

    PostMapper.new.save(@post)
  end

end
