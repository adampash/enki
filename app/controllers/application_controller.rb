class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def logged_in?
    session[:logged_in] == true
  end

  protected

  def enki_config
    @@enki_config = Enki::Config.default
  end
  helper_method :enki_config
end
