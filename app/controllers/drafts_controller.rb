class DraftsController < ApplicationController
	def new
		@draft = Draft.new
		@event_brackets = Event.find(:event_id).brackets
		@group = Group.find(:group_id)
		@user = current_user.id
	end

	def create
		@event = Event.find(:event_id)
		@group = Group.find(:group_id)
		@user = current_user.id



	end



end


