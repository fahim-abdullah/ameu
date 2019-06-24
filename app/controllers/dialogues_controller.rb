class DialoguesController < ApplicationController
	before_action :set_timezone
	before_action :red

	def index
	end

	def new 
		@dialogue = Dialogue.new
	end

	def create
		@dialogue = Dialogue.new(dialogue_params)
		if @dialogue.save
			redirect_to new_dialogue_path
		else
			render 'new'
		end
	end

	def show
		@dialogue = Dialogue.find(params[:id])
	end

	def edit
		@dialogue = Dialogue.find(params[:id])
	end

	def update 
		@dialogue = Dialogue.find(params[:id])
		if @dialogue.update(dialogue_params)
			redirect_to all_events_path
		else
			render 'show'
		end
	end

	def destroy
		@dialogue = Dialogue.find(params[:id])
		@dialogue.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to all_events_path
	end

	private 
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	def dialogue_params 
		params.require(:dialogue).permit(:title, :interviewee, :video_link, :dialoguepic)
	end
end