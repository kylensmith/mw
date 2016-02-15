class UsersController < ApplicationController
	before_filter :authenticate_user!, only: [:index]
	def index
	end

	def show
	end
end
