class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def new
    @post = Post.new
    @tags = Tag.all
  end

  def create
    new_post = Post.create(post_params)
    tag_params.each do |tag_str|
      tag = Tag.find_or_create_by(name: tag_str)
      new_post.tags << tag
    end
    redirect_to '/posts'
  end

  def show
    find_post
    @tags = Tag.all
  end

  def edit
    find_post
    @tags = Tag.all
  end

  def update
    find_post
    if @post
      @post.update_attributes(post_params)
      # remove all old tags
      @post.tags.clear
      # add new tags
      tag_params.each do |tag_str|
        tag = Tag.find_or_create_by(name: tag_str)
        @post.tags << tag
      end
    end
    redirect_to "/posts/#{@post_id}"
  end

  def destroy
    find_post
    if @post
      @post.destroy
    end
    redirect_to '/posts'
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :content, :tagline, :image)
    end

    def tag_params
      tag_params = params.require(:post).permit(:tags)
      tag_params[:tags].split(",").map(&:strip).map(&:downcase)
    end

    def find_post
      post_id = params[:id]
      @post = Post.find(post_id)
    end

end