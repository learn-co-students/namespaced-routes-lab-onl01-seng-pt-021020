class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def allow_create_songs
    Preference.last.allow_create_songs
  end

  def allow_create_artists
    Preference.last.allow_create_artists
  end
end
