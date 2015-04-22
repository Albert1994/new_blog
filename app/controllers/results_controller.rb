class ResultsController < ApplicationController
	def index
    	@search_results = User.search_everywhere(params[:query])
    	@user = current_user
  	end
end
