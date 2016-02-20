class GroupsController < ApplicationController
	def index
		@yours = Group.all
		@id = current_user.id
	end	

	def show
		@group = Group.find(params[:id])
		@events = @group.events
	end


end
