class SessionsController < ApplicationController
  def new
    
  end

  def create
    # byebug
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to "/"
    else 
      redirect_to "/sessions/new"
    end 
  end 

  def destroy
    session.clear
    redirect_to "/"
  end 
end
