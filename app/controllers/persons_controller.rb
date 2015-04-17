class PersonsController < ApplicationController
  def profile
  	if user_signed_in? 
  	@posts  = current_user.posts
  end
  end
end
