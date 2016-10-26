class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :hotel

	validates :user_id, :hotel_id, :stars, :params, :description, presence: true
end
