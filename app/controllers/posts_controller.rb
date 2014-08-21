class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
    render :index
  end

  def new
    render :new
  end

  def create
    post = params.require(:post).permit(:title, :author, :content, :tagline, :image)
    Post.create(post)
    redirect_to '/posts'
  end

  def show
    id = params[:id]
    @post = Post.find(id)
    render :show
  end
end