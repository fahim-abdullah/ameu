class MembersController < ApplicationController
	before_action :set_timezone
	# before_action :red
	before_action :require_user, except: [:index]

	def index
		@uk = Member.all.where("region = 'UK'")
		@my = Member.all.where("region = 'MY'")
	end

	def new 
		@member = Member.new
	end

	def create
		@member = Member.new(member_params)
		if @member.save
			redirect_to new_member_path
		else
			render 'new'
		end
	end

	def show
		@member = Member.find(params[:id])
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update 
		@member = Member.find(params[:id])
		if @member.update(member_params)
			redirect_to all_members_path
		else
			render 'show'
		end
	end

	def destroy
		@member = Member.find(params[:id])
		@member.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to all_members_path
	end

	private 
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	def member_params 
		params.require(:member).permit(:region, :office, :name, :designation, :facebook, :linkedin, :twitter, :ig, :email, :profpic)
	end
end