class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		if !current_user.admin.present?
			redirect_to root_path
		else
		@events = Event.all
		@event = Event.new
		end
	end

	def create
		if !current_user.admin.present?
			redirect_to root_path
		else
		@event = Event.create(eventinfo)
		# @competitor.save
	
		redirect_to request.referer	
	end
	end



	def show
		@event = Event.find(params[:id])
		@brackets = @event.brackets
		@group = params[:group_id]
		@g = Group.find(@group)
		@ev = params[:event_id]
		@draft = @event.drafts

	end

	private
	def eventinfo
		params.require(:event).permit(:event_name, :start_date, :end_date)
	end



end
