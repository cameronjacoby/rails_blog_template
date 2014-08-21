class TagsController < ApplicationController

  def show
    id = params[:id]
    @tag = Tag.find(id)
    render :show
  end
end