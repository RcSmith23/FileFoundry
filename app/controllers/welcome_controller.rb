class WelcomeController < ApplicationController
  def index
    @trending = Drawing.last(3)
  end
end
