class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review_params = params.require(:review).permit(:book_id, :title, :description)

    @review = Review.new review_params.merge(user: current_user)

    if @review.save
      redirect_to root_path, notice: 'Successfully saved your review!'
    else
      render 'new'
    end
  end
end