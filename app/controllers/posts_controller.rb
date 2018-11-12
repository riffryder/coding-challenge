class PostsController < ApplicationController
  def index
    # Return all `Post`
    @posts = Post.search(params[:search])
  end

  def new
    # Return view to create a new Post
    @post = Post.new
  end

  def create
    # Add a new `Post` to the database
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    # Remove a `Post` from the database
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
