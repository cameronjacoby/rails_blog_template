class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
  end


  def new
    @tags = Tag.all
  end


  def create
    post_params = params.require(:post).permit(:title, :author, :content, :tagline, :image)
    tag_params = params.require(:tags).split(",").map(&:strip).map(&:downcase)

    new_post = Post.create(post_params)

    tag_params.each do |tag_str|
      tag = Tag.find_or_create_by(name: tag_str)
      new_post.tags << tag
    end

    redirect_to '/posts'
  end


  def show
    post_id = params[:id]
    @post = Post.find(post_id)
    @tags = Tag.all
  end


  def edit
    post_id = params[:id]
    @post = Post.find(post_id)
    @tags = Tag.all
  end


  def update
    post_id = params[:id]
    post_params = params.require(:post).permit(:title, :author, :content, :tagline, :image)
    tag_params = params.require(:tags).split(",").map(&:strip).map(&:downcase)

    post = Post.find_by_id(post_id)
    if post
      post.update_attributes(post_params)
      # remove all old tags
      post.tags.clear
      # add new tags
      tag_params.each do |tag_str|
        tag = Tag.find_or_create_by(name: tag_str)
        post.tags << tag
      end
    end

    redirect_to "/posts/" + post_id
  end


  def destroy
    post_id = params[:id]
    post = Post.find_by_id(post_id)
    if post
      post.destroy
    end

    redirect_to '/posts'
  end
end