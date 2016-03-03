class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
		@brackets = @event.brackets
		@group = params[:group_id]
		@g = Group.find(@group)
		@ev = params[:event_id]
		@draft = @event.drafts

	end



end
