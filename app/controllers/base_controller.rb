class BaseController < ApplicationController
  before_action :authenticated_user!
  protect_from_forgery with: :exception
end
