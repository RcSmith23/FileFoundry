class WelcomeController < ApplicationController
  def index
    if not params.has_key?(:page)
      @trending = Drawing.all.paginate(page: 1, per_page: 3)
    elsif params[:page].to_i < 1
      @trending = Drawing.all.paginate(page: 1, per_page: 3)
    else
      @trending = Drawing.all.paginate(page: params[:page], per_page: 3)
    end
  end
end
