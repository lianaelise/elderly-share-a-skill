class ReviewsController < ApplicationController
  before_action :set_user

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.reviewer = current_user
    @review.reviewee = @user
    if @review.valid?
      @review.save
      redirect_to teacher_path(@user.id)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to teacher_path(@user.id)
  end

  private

  def set_user
    user_id = params[:teacher_id] || params[:student_id]
    @user = User.find(user_id)
  end

  def review_params
    params.require(:review).permit(:reviewer_id, :reviewee_id, :body, :rating)
  end
end
