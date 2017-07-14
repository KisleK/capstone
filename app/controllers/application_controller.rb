class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_owner
    @current_owner ||= Owner.find(session[:owner_id]) if session[:owner_id]
  end
  helper_method :current_owner

  def current_walker
    @current_walker ||= Walker.find(session[:walker_id]) if session[:walker_id]
  end
  helper_method :current_walker




  private 
  
  def authenticate_owner!
    if current_owner
    elsif current_walker
      redirect_to "/walkers/#{current_walker.id}"
    else 
      redirect_to '/' 
    end
  end

  def authenticate_walker!
    if current_walker
    elsif current_owner
      redirect_to "/owners/#{current_owner.id}"
    else 
      redirect_to '/' 
    end
  end
end
