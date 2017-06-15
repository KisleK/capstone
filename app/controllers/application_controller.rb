class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_owner
    if @current_owner
      return @current_owner
    else
      if session[:owner_id]
        @current_owner = Owner.find_by(id: session[:owner_id])
      end
    end
  end
  helper_method :current_owner

  def current_walker
    if @current_walker
      return @current_walker
    else
      if session[:walker_id]
        @current_walker = Walker.find_by(id: session[:walker_id])
      end
    end
  end
  helper_method :current_walker


  private 
  
  def authenticate_owner!
    redirect to '/login_owner' unless current_owner
  end

  def authenticate_walker!
    redirect to '/login_walker' unless current_walker
  end
end
