class PostsController < ApplicationController

  def index
    @posts = Post.all
    @tags = Tag.all
    render :index
  end

  def new
    @tags = Tag.all
    render :new
  end

  def create
    post = params.require(:post).permit(:title, :author, :content, :tagline, :image)

    post_tags = params.require(:post).permit(:tags)
    tags = post_tags[:tags]
    tag_list = tags.split(',')
    
    new_post = Post.create(post)

    tag_list.each do |tag|
      if Tag.find_by_name(tag) == nil
        post_tag = Tag.create(name: tag)
      else
        post_tag = Tag.find_by_name(tag)
      end
      new_post.tags.append(post_tag)
    end

    redirect_to '/posts'
  end

  def show
    id = params[:id]
    @post = Post.find(id)
    @tags = Tag.all
    render :show
  end
end