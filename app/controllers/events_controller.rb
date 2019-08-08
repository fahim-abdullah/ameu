class EventsController < ApplicationController
	before_action :set_timezone
	# before_action :red

	def index
		@upcoming = Event.where('datetime > ?', Time.now)
		@past = Event.where('datetime < ?', Time.now)
	end

	def all
		@events = Event.all
		@dialogues = Dialogue.all
	end

	def new 
		@event = Event.new
		redirect_to all_events_path
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to new_event_path
		else
			render 'new'
		end
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update 
		@event = Event.find(params[:id])
		if @event.update(event_params)
			redirect_to all_events_path
		else
			render 'show'
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to all_events_path
	end

	private 
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	def event_params 
		params.require(:event).permit(:title, :datetime, :venue, :link, :eventpic)
	end
end