class WelcomeController < ApplicationController
  def index
    if not params.has_key?(:page)
      @trending = Drawing.all.paginate(page: 1, per_page: 3)
    elsif params[:page].to_i < 1
      @trending = Drawing.all.paginate(page: 1, per_page: 3)
    else
      @trending = Drawing.all.paginate(page: params[:page], per_page: 3)
    end

    if params.has_key?(:search)
      render action: "search"
    end
  end

  private
    # Simple placeholder for the real search that will happen
    def search
      @models = Drawing.where("name like ? ", "%#{params[:search]}%").take(4)
      @categories = %w(science technology hardware)
      respond_to do |format|
        format.js
      end
    end
end
