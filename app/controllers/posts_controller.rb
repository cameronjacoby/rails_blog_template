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
      tag = Tag.find_by_name(tag_str)
      if tag == nil
        tag = Tag.create(name: tag_str)
      end
      new_post.tags << tag
    end

    redirect_to '/posts'
  end

  def show
    post_id = params[:id]
    @post = Post.find(post_id)
    @tags = Tag.all
  end
end