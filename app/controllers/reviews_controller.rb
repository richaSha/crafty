class ReviewsController < ApplicationController
  def create
    @craft = Craft.find(params[:craft_id])
    @review = @craft.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review is saved!!"
    else
      flash[:alert] = "There was a problem adding review."
    end
    redirect_to "/crafts/"+ params[:craft_id]
  end


  def review_params
    additional_info = {:user_id => current_user.id}
    params.require(:review).permit(:review).merge(additional_info)
  end
end
