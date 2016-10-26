class ReviewsController < ApplicationController

	def index
		@hotel = Hotel.find_by_id(params[:hotel_id])
		@reviews = @hotel.reviews.all
	end

	def new
		@hotel = Hotel.find_by_id(params[:hotel_id])
		@review = Review.new
	end

	def create
		@hotel = Hotel.find_by_id(params[:hotel_id])
		review = Review.create(review_params)
		# picking first hardcoded user for now
		# review.user_id = current_user.id
		review.user_id = User.first.id
		review.hotel_id = @hotel.id
		if review.save
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
