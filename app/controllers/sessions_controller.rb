class SessionsController < ApplicationController


  def new
  end

  def create
  	super do |resource|
      BackgroundWorker.trigger(resource)
  end

  def destroy
  		session[:user_id]=nil
  		redirect_to status_index_url, notice: "Logged Out"
  end
end
