class ApplicationController < ActionController::Base

  include Authentication
  helper_method :viewer

  helper :all

  filter_parameter_logging :password

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'c0343548cd9ee7aee309727618e8b6ca'

  def log_view
    if viewer.real? && @mock
      MockView.log_view(@mock, viewer)
    end
  end
end
