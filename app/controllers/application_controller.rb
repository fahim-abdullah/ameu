class ApplicationController < ActionController::Base

	def red
		redirect_to under_development_path
	end

end
