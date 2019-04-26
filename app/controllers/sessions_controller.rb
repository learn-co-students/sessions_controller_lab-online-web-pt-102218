require 'pry'
class SessionsController < ApplicationController
  def new
  end

  def create 
   
    if params[:name].nil? 
      redirect_to login_path
    elsif params[:name].empty? 
      redirect_to login_path
    elsif session.empty?
      session[:name] = params[:name]
      redirect_to root_path
    else 
      redirect_to root_path
    end

  end 
  def destroy 
    session.delete :name
  end 
end
