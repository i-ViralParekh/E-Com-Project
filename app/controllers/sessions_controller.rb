class SessionsController < ApplicationController
	skip_before_action :authorize

  def new
  end

  def create
  	l_user = LUser.find_by(name: params[:name])
  	if l_user.try(:authenticate, params[:password])
  		session[:user_id] = l_user.id
  		redirect_to admin_url
  	else
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to store_index_url, notice: "Logged out"
  end
end
