class CraftsController < ApplicationController

  def index
    @craft = Craft.all()
  end


end
