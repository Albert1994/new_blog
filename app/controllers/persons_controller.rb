class PersonsController < ApplicationController
 before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
 def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  def profile
  	if user_signed_in? 
  		@posts  = current_user.posts
  		@user= current_user
  	end
  end
end
