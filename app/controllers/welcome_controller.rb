class WelcomeController < ApplicationController
  def index
    if not params.has_key?(:page)
      @trending = Drawing.all.paginate(page: 1, per_page: 3)
    elsif params[:page].to_i < 1
      @trending = Drawing.all.paginate(page: 1, per_page: 3)
    else
      @trending = Drawing.all.paginate(page: params[:page], per_page: 3)
    end
    @categories = %w(science technology hardware)
    @models = Drawing.take(4)

    if params.has_key?(:search)
      redirect_to action: 'search', :search => params[:search]
    end
  end

  def search
    @models = Drawing.where("name LIKE ?", "%#{params[:search]}%").take(4)
    @categories = %w(science technology hardware)
    respond_to do |format|
      format.js
    end
  end
end
