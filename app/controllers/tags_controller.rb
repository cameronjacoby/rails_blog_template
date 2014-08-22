class TagsController < ApplicationController

  def show
    tag_id = params[:id]
    @tag = Tag.find(tag_id)
    @tags = Tag.all
  end

end