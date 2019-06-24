class StaticsController < ApplicationController
	before_action :red, except: [:thankyou, :summit, :under_development]
	def home 
	end

	def about
	end

	def contact
	end

	def thankyou
	end

	def summit
	end

	def under_development 
	end

end