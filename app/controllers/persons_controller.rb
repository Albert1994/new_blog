class PersonsController < ApplicationController
  def profile
  	if user_signed_in? 
  	@posts  = current_user.posts
  	@user= current_user
  end
  end
end
