class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
    render :index
  end

  def show
    id = params[:id]
    @post = Post.find(id)
    render :show
  end
end