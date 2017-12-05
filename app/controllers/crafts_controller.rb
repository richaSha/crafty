class CraftsController < ApplicationController

  def index
    @craft = Craft.all()
  end

  def show
    @craft = Craft.find(params[:id])
    @review = @craft.reviews.new
  end


end
