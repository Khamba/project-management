class StaticPagesController < ApplicationController

	def homepage
		@users = User.all
		params[:id] ||= User.first.id
		@current_user = User.find(params[:id])
	end

	def settings
	end

end
