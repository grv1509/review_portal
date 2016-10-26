class HotelsController < ApplicationController

	def index
		@hotels = Hotel.all
	end

	def show
		@hotel = Hotel.find_by_id(params[:id])
	end
end
