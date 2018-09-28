class SessionsController < ApplicationController

  def new

  end

  def create
    session[:name] = params[:name]
    if session[:name] && session[:name] != ""
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name].nil?
      redirect_to '/'
    else
      session.delete :name
      redirect_to '/'
    end
  end

end
