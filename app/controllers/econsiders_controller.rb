class EconsidersController < ApplicationController
	before_action :set_timezone

	def index
	end

	def all
	end

	def new 
		@econsider = Econsider.new
	end

	def create
		@econsider = Econsider.new(econsider_params)
		if @econsider.save
			redirect_to new_econsider_path
		else
			render 'new'
		end
	end

	def show
		@econsider = Econsider.find(params[:id])
	end

	def edit
		@econsider = Econsider.find(params[:id])
	end

	def update 
		@econsider = Econsider.find(params[:id])
		if @econsider.update(econsider_params)
			redirect_to all_econsiders_path
		else
			render 'show'
		end
	end

	def destroy
		@econsider = Econsider.find(params[:id])
		@econsider.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to all_econsiders_path
	end

	private 
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	def econsider_params 
		params.require(:econsider).permit(:region, :office, :name, :designation, :facebook, :linkedin, :twitter, :ig, :email, :profpic)
	end
end