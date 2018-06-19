class ApplicationController < ActionController::Base
  acts_as_token_authentication_handler_for User, fallback: :none
  before_action :authenticate_user!
end
