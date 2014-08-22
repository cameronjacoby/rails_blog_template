class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
    @tags = Tag.all
  end

  def show
    find_comment
    @tags = Tag.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    @tags = Tag.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to [@post, @comment]
    else
      render action: 'new'
    end
  end

  def edit
    find_comment
    @tags = Tag.all
  end

  def update
    find_comment
    if @comment.update(comment_params)
      redirect_to [@post, @comment]
    else
      render action: 'edit'
    end
  end

  def destroy
    find_comment
    @comment.destroy
    redirect_to post_comments_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :author, :body)
    end

    def find_comment
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
    end

end