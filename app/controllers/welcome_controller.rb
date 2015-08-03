class WelcomeController < ApplicationController
  def index
    @drawings = Drawing.last(3)
  end
end
