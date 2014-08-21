class TagsController < ApplicationController

  def show
    id = params[:id]
    @tag = Tag.find(id)
    @tags = Tag.all
    render :show
  end
end