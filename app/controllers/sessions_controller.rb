class SessionsController < ApplicationController
  def new

  end

  def create
    redirect_to '/login' and return if params[:name].blank?
    session[:name] = params[:name]
    redirect_to '/'
  end
  
  def destroy
    reset_session
  end
end
