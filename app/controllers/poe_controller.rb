class PoeController < ActionController::Base
  protect_from_forgery

  def hit_it
    @hit = TumblrGrabber.new
  end
end
