class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :genres

  def genres
  	@genres = Genre.order(:name)
  end

end
