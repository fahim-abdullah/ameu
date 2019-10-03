class EconsidersController < ApplicationController
	before_action :set_timezone
	# before_action :red
	before_action :require_user, except: [:index, :show]

	def index
		@econsiders = Econsider.all.order("created_at DESC")
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
		params.require(:econsider).permit(:title, :post_heading, :postimg, :author, :post)
	end
end