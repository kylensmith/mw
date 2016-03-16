class GroupsController < ApplicationController
	def index
		@yours = Group.all
		@public = Group.where(gtype: 2)
		@id = current_user.id
	end	

	def show
		@group = Group.find(params[:id])
		@events = @group.events
	end

	def new
		@group = Group.new

	end


# This action and view is needed for an admin to push users into groups.
	def admin
		if !current_user.admin.present?
			redirect_to root_path
		else
			@users = User.all
			@ev =Event.new 
			@matches = Match.new
		
		end
	end

	def create
		@group = Group.create(groupinfo)
		@user = current_user
		Director.create(user_id: current_user.id, group_id: @group.id)
		@user.groups.push @group
		redirect_to groups_path
	end

	private

	def groupinfo
		params.require(:group).permit(:gname, :gtype)
	end


end
