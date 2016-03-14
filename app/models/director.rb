class Director < ActiveRecord::Base
	belongs_to :user
	belongs_to :group
	def profile
		User.find(user_id).profile
	end
end