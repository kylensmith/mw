class UsersController < ApplicationController
	before_filter :authenticate_user!, only: [:index]
	def index
		if current_user.profile.blank?
			redirect_to new_profile_path

		end
	end

	def show
	end
end
