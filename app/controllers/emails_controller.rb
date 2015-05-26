class EmailsController < ApplicationController
  def create
    @email = Email.new({:email => params[:email]})
    if @email.save
      flash[:notice] = "Email was successfully submitted."
    else
      flash[:alert] = "Invalid email address, it was not successfully submitted."
    end
    redirect_to root_path
  end
end
