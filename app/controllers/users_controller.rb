class UsersController < ApplicationController
	before_action :require_user, except: [:new, :create]

	def new
		@user = User.new
	end

	def index
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			flash[:success] = "Welcome"
			redirect_to all_econsiders_path
		else
			render 'new'
		end
	end

	private 
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

end