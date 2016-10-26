class Hotel < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	validates :name, :address, presence: true
end
