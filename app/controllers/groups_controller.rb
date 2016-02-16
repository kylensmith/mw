class GroupsController < ApplicationController
	def index
		@yours = Group.all
		@id = current_user.id
	end	


end
