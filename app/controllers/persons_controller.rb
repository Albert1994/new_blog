class PersonsController < ApplicationController
  def profile
  	@posts  = Post.all
  	  end
 
  
end
