class ReviewsController < ApplicationController
  before_action :set_user, only: :new
  before_action :set_travel, only: %i[new create]

  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.travel = @travel
    if @review.save!
      redirect_to travel_review_path(@travel, @review)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def set_travel
    @travel = Travel.find(params[:travel_id])
  end

  def set_user
    @user = User.find_by(first_name: "John")
  end

  def review_params
    params.require(:review).permit(:rating, :comment, :user_id)
  end
end
