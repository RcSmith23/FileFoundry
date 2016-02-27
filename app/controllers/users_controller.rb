class UsersController < ApplicationController
  protect_from_forgery except: :index
  def show
  end
end
