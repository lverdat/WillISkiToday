# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :require_login
 
  private
 
  def require_login
    unless session[:client]
      flash[:warning] = "Vous devez être authentifié pour accéder à cette ressource"
      redirect_to root_url
    end
  end
  
   def require_admin
    unless session[:client] && session[:client][:admin]
      flash[:warning] = "Vous devez être admin pour accéder à cette ressource"
      redirect_to root_url
    end
  end
  

end
