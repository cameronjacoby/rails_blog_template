class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
    @tags = Tag.all
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find_by_id(params[:id])
    @tags = Tag.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    @tags = Tag.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params.require(:comment).permit(:title, :author, :body))

    if @comment.save
      redirect_to [@post, @comment]
    else
      render action: 'new'
    end
  end
end