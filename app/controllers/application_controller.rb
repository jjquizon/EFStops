class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    # @current_user = User.find_by_session_token(session[:token])
    return nil unless session[:token]
    @current_user ||= User.find_by_session_token(session[:token])
  end

  def logged_in?
    !!current_user
  end

  def login!(user)
    @current_user = user
    session[:token] = user.reset_session_token
  end

  def logout!
    current_user.try(:reset_session_token)
    session[:token] = nil
  end

  def require_signed_in
    redirect_to home_url unless logged_in?
  end

  def create_none_album(user)
    album = Album.new({
        title: "None",
        description: "No Description",
        user_id: user.id
      })

    album.save
  end


end
