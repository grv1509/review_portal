class ReviewsController < ApplicationController

	def index
		@hotel = Hotel.find_by_id(params[:hotel_id])
		@reviews = @hotel.reviews.all
	end

	def new
		@hotel = Hotel.find_by_id(params[:hotel_id])
		@review = @hotel.reviews.new
	end

	def create
		@hotel = Hotel.find_by_id(params[:hotel_id])
		review = @hotel.reviews.new(review_params)
		# picking first hardcoded user for now
		# review.user_id = current_user.id
		review.user_id = User.first.id
		if @hotel.reviews.new(review_params)
      flash[:success] = "Review saved !!"
      redirect_to hotels_path
    else
      render 'edit'
    end
	end

	private

	def review_params
    params.require(:review).permit(:stars, :label, :description)
  end
end
